import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import '../Provider/ChatProvider.dart';
import '../app_theme/app_theme.dart';

class Bottomsheet extends StatefulWidget {
  final String myinviteCode;
  final IO.Socket socket;
  final List messages;

  const Bottomsheet(
      {required this.myinviteCode,
      required this.socket,
      required this.messages,
      super.key});

  @override
  State<Bottomsheet> createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  final _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    loadImgage();
    super.initState();
    print(widget.socket);
    //SOCKET FOR NEW MESSAGE
    widget.socket.on("party/new-message", (data) {
      print(data);
      try {
        if (data is Map<String, dynamic>) {
          final String senderId =
              data['senderId'].toString(); // Convert to String
          final String content = data['content'] as String;

          final newMessage = ChatMessage(senderId, content);
          setState(() {
            widget.messages.add(newMessage);
            _scrollToBottom();
          });
        } else {
          print("Error: Invalid message format received from server.");
        }
      } catch (e) {
        print("Error parsing message: $e");
      }
    });
  }

  // SOCKET FOR SEND MESSAGE
  void _sendMessage() {
    String messageText = _messageController.text;
    if (messageText.isNotEmpty) {
      print("Sending message: $messageText"); // Log the message text
      widget.socket.emit('party/send-message', [
        widget.myinviteCode,
        messageText
      ]); // Send inviteCode and messageText
      // Add the message to your local list with "You" as the sender
      setState(() {
        widget.messages.add(ChatMessage(
            "You", messageText)); // Assuming "You" is the current user ID
        _scrollToBottom();
      });
      _messageController.clear();
    }
  }

  void _scrollToBottom() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        _scrollController.position.minScrollExtent,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    }
  }

  String? image;
  Future<void> loadImgage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      image = prefs.getString('profileImage');
    });
  }

  @override
  void dispose() {
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      // Wrap with SafeArea
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 34.0),
        color: Color(0xff757575),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0),
              topLeft: Radius.circular(20.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              left: 12.0,
              right: 12.0,
            ),
            child: Column(
              children: [
                const SizedBox(height: 17),
                // Chat messages (Consumer wrapped ListView)
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    shrinkWrap: true, // Add this line
                    controller: _scrollController,
                    itemCount: widget.messages.length,
                    itemBuilder: (context, index) {
                      // Get messages in reverse order
                      return YourChatMessageWidget(
                        message:
                            widget.messages[widget.messages.length - 1 - index],
                        currentUserId:
                            '2', // Replace with the actual current user ID
                      );
                    },
                  ),
                ),
                const SizedBox(height: 15),
                SingleChildScrollView(
                  child: Row(
                    children: [
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.only(left: 12.0),
                          height: size.height * 0.09,
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: TextFormField(
                                  controller: _messageController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    hintText: "Type Message",
                                    hintStyle: const TextStyle(
                                        fontSize: 14, color: Colors.black),
                                    suffixIcon: IconButton(
                                      onPressed: _sendMessage,
                                      icon: Icon(
                                        Icons.send,
                                        color: AppColors.primaryTextColor,
                                      ),
                                    ),
                                  ),
                                  style: const TextStyle(fontSize: 14),
                                  maxLines: 1,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Container(
                          height: 40,
                          width: 40,
                          margin: const EdgeInsets.only(left: 8.0),
                          child: const CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage("assets/images/you.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// chat_message_widget.dart or within your Bottomsheet file

class YourChatMessageWidget extends StatelessWidget {
  final ChatMessage message;
  final String currentUserId;

  const YourChatMessageWidget({
    required this.message,
    required this.currentUserId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isCurrentUser = message.sender == "You";

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
      child: Row(
        mainAxisAlignment:
            isCurrentUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isCurrentUser) // Add avatar for other users
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: CircleAvatar(
                backgroundImage:
                    const AssetImage("assets/images/happyemoji.png"),
                radius: 22.0,
              ),
            ),
          if (!isCurrentUser)
            SizedBox(
                width: 8.0), // Space between avatar and message for other users

          // Message content
          Flexible(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.symmetric(vertical: 4.0),
              decoration: BoxDecoration(
                color: isCurrentUser ? Colors.grey : Color(0xFFEDD0FF),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                "${message.sender}: ${message.content}",
                style: TextStyle(
                  color: isCurrentUser ? Colors.white : Colors.black,
                ),
                textAlign: isCurrentUser
                    ? TextAlign.left
                    : TextAlign.right, // Align text within the container
              ),
            ),
          ),

          if (isCurrentUser)
            SizedBox(
                width:
                    8.0), // Space between message and avatar for current user
          if (isCurrentUser) // Add avatar for current user
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/you.png"),
                radius: 22.0,
              ),
            ),
        ],
      ),
    );
  }
}
