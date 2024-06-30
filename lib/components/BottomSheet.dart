
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import '../Provider/ChatProvider.dart';
import '../app_theme/app_theme.dart';

class Bottomsheet extends StatefulWidget {
  const Bottomsheet({super.key});

  @override
  State<Bottomsheet> createState() => _BottomsheetState();
}

class _BottomsheetState extends State<Bottomsheet> {
  final _messageController = TextEditingController();
  late ChatProvider _chatProvider;
  late IO.Socket socket;

  @override
  void initState() {
    super.initState();
    _chatProvider = Provider.of<ChatProvider>(context, listen: false);
    socket = _chatProvider.socket;

    // Ensure socket connection when the bottomsheet is opened
    if (!_chatProvider.socket.connected) {
      _chatProvider.socket.connect();
    }

    // Socket.IO listener for incoming messages
    socket.on("party/new-message", (data) {
      _chatProvider.addMessage(ChatMessage.fromJson(jsonDecode(data)));
    });
  }

  void _sendMessage() {
    String messageText = _messageController.text;
    if (messageText.isNotEmpty) {
      // Create a message object with sender information
      Map<String, dynamic> messageData = {
        'sender': 'YourName',
        'content': messageText,
      };

      print("Sending message: $messageData"); // Log the message object
      socket.emit('party/send-message', messageData);
      _messageController.clear();
    }
  }


  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea( // Wrap with SafeArea
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 34.0),
        color:  Color(0xff757575),
        child: Container(
          decoration:  BoxDecoration(
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
                  child: Consumer<ChatProvider>(
                    builder: (context, chatProvider, child) {
                      return ListView.builder(
                        reverse: true,
                        controller: ScrollController(
                          initialScrollOffset: 0.0,
                          keepScrollOffset: true,
                        ),
                        itemCount: chatProvider.messages.length,
                        itemBuilder: (context, index) {
                          // Get messages in reverse order
                          return YourChatMessageWidget(
                              chatProvider.messages[
                              chatProvider.messages.length - 1 -
                                  index]);
                        },
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
                                      borderRadius:
                                      BorderRadius.circular(8),
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

  const YourChatMessageWidget(this.message, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Implement your custom chat message UI here
    // You'll likely use the message.sender and message.content properties
    // to display the message content and sender appropriately
    // Example:
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        color: message.sender == "You" ? Colors.blue : Colors.grey[300],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text(
        "${message.sender}: ${message.content}",
        style: TextStyle(
          color: message.sender == "You" ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}


//  SafeArea(
//         child: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
//             child: Container(
//               padding: EdgeInsets.symmetric(horizontal: 34.0), // Adjust margin as needed
//               color: Color(0xff757575),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topRight: Radius.circular(20.0),
//                     topLeft: Radius.circular(20.0),
//                   ),
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.only(
//                     bottom: MediaQuery.of(context).viewInsets.bottom,
//                     left: 12.0, // Added horizontal margin
//                     right: 12.0, // Added horizontal margin
//                   ),
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         SizedBox(height: 17,),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.only(bottom: 80),
//                               child: Container(
//                                 height: 51,
//                                 width: 51,
//                                 margin: EdgeInsets.only(left: 8.0), // Optional margin for spacing
//                                 child: CircleAvatar(
//                                   radius: 30,
//                                   backgroundImage: AssetImage("assets/images/arthur.png"),
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(left: 5),
//                               child: Column(
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.only(right: 170, bottom: 8),
//                                     child: Text(
//                                       "Ali Jahangir",
//                                       style: TextStyle(
//                                         fontSize: 12,
//                                         fontFamily: "Lato",
//                                         fontWeight: FontWeight.w600,
//                                       ),
//                                     ),
//                                   ),
//                                   Padding(
//                                     padding: EdgeInsets.only(right: 100),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(6),
//                                         color: Color.fromRGBO(237, 208, 255, 1),
//                                       ),
//                                       child: Column(
//                                         children: <Widget>[
//                                           Padding(
//                                             padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//                                             child: Column(
//                                               children: [
//                                                 Padding(
//                                                   padding: EdgeInsets.all(8.0),
//                                                   child: Text(
//                                                     "Hey everyone!",
//                                                     style: TextStyle(fontFamily: "Lato"),
//                                                   ),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                   SizedBox(height: 8,),
//                                   Padding(
//                                     padding: EdgeInsets.only(right: 90),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(6),
//                                         color: Color.fromRGBO(237, 208, 255, 1),
//                                       ),
//                                       child: Column(
//                                         children: <Widget>[
//                                           Padding(
//                                             padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//                                             child: Column(
//                                               children: [
//                                                 Padding(
//                                                   padding: EdgeInsets.all(8.0),
//                                                   child: Text("What’s the plan?"),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 16,),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.start,
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.only(bottom: 90),
//                               child: Container(
//                                 height: 51,
//                                 width: 51,
//                                 margin: EdgeInsets.only(left: 8.0), // Optional margin for spacing
//                                 child: CircleAvatar(
//                                   radius: 30,
//                                   backgroundImage: AssetImage("assets/images/audrey.png"),
//                                 ),
//                               ),
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(left: 5),
//                               child: Column(
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.only(right: 175, bottom: 8),
//                                     child: Text(
//                                       "Sarah",
//                                       style: TextStyle(
//                                         fontSize: 12,
//                                         fontFamily: "Lato",
//                                         fontWeight: FontWeight.w600,
//                                       ),
//                                     ),
//                                   ),
//                                   Container(
//                                     decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(6),
//                                       color: Color.fromRGBO(237, 208, 255, 1),
//                                     ),
//                                     child: Column(
//                                       children: <Widget>[
//                                         Padding(
//                                           padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//                                           child: Column(
//                                             children: [
//                                               Padding(
//                                                 padding: EdgeInsets.all(8.0),
//                                                 child: Text(
//                                                   "Let’s go to a Burger Place",
//                                                   style: TextStyle(fontFamily: "Lato"),
//                                                 ),
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   SizedBox(height: 8,),
//                                   Padding(
//                                     padding: EdgeInsets.only(right: 70),
//                                     child: Container(
//                                       decoration: BoxDecoration(
//                                         borderRadius: BorderRadius.circular(6),
//                                         color: Color.fromRGBO(237, 208, 255, 1),
//                                       ),
//                                       child: Column(
//                                         children: <Widget>[
//                                           Padding(
//                                             padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//                                             child: Column(
//                                               children: [
//                                                 Padding(
//                                                   padding: EdgeInsets.all(8.0),
//                                                   child: Text("Add Rachel too!"),
//                                                 ),
//                                               ],
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 16,),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             Column(
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsets.only(left: 150),
//                                   child: Text(
//                                     "You",
//                                     style: TextStyle(
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.w600,
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(height: 8,),
//                                 Container(
//                                   decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(6),
//                                     color: Colors.grey[300],
//                                   ),
//                                   child: Column(
//                                     children: <Widget>[
//                                       Padding(
//                                         padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
//                                         child: Column(
//                                           children: [
//                                             Padding(
//                                               padding: EdgeInsets.all(8.0),
//                                               child: Text("Burger Place uhhhh okay"),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Padding(
//                               padding: EdgeInsets.only(bottom: 15),
//                               child: Container(
//                                 height: 51,
//                                 width: 51,
//                                 margin: EdgeInsets.only(left: 8.0), // Optional margin for spacing
//                                 child: CircleAvatar(
//                                   radius: 30,
//                                   backgroundImage: AssetImage("assets/images/you.png"),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 15,),
//                         Row(
//                           children: [
//                             Flexible(
// //                               child: Container(
// //                                 padding: EdgeInsets.only(left: 12.0),
// //                                 height: size.height * 0.09, // Adjust height as needed
// //                                 child: Column(
// //                                   children: <Widget>[
// //                                     Padding(
// //                                       padding: EdgeInsets.only(top: 10),
// //                                       child: TextFormField(
// //                                         decoration: InputDecoration(
// //                                           border: OutlineInputBorder(
// //                                             borderRadius: BorderRadius.circular(8),
// //                                           ),
// //                                           hintText: "Type Message",
// //                                           hintStyle: TextStyle(fontSize: 14, color: Colors.black),
// //                                           suffixIcon: Icon(
// //                                             Icons.send,
// //                                             color: AppColors.primaryTextColor,
// //                                           ),
// //                                         ),
// //                                         style: TextStyle(fontSize: 14), // Reduce font size if needed
// //                                         maxLines: 1, // Ensure single line height
// //                                       ),
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ),
// //                             ),
// //                             Padding(
// //                               padding: EdgeInsets.only(bottom: 15),
// //                               child: Container(
// //                                 height: 40,
// //                                 width: 40,
// //                                 margin: EdgeInsets.only(left: 8.0), // Optional margin for spacing
// //                                 child: CircleAvatar(
// //                                   radius: 30,
// //                                   backgroundImage: AssetImage("assets/images/you.png"),
// //                                 ),
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),