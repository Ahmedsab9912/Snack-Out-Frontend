import 'package:flutter/foundation.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

// Create a simple ChatMessage class outside the ChatProvider
class ChatMessage {
  final String sender;
  final String content;

  ChatMessage(this.sender, this.content);

  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    return ChatMessage(json['sender'], json['content']);
  }
}

class ChatProvider with ChangeNotifier {
  late IO.Socket socket;
  final List<ChatMessage> _messages = [];

  ChatProvider() {
    _initializeSocket();
  }

  void _initializeSocket() {
    socket = IO.io(
      'wss://snack-mate-backend-production.up.railway.app',
      IO.OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect()
          .build(),
    );

    socket.onConnect((_) {
      print('Connected to websocket');
    });

    socket.onConnectError((data) => print('Connect Error: $data'));

    // Socket.IO listener for incoming messages
    // socket.on("party/new-message", (data) {
    //   print(data);
    //   try {
    //     if (data is Map<String, dynamic>) {
    //       final String senderId = data['senderId'].toString();
    //       final String content = data['content'].toString();
    //
    //       final newMessage = ChatMessage(senderId, content);
    //       addMessage(newMessage);
    //     } else {
    //       print("Error: Invalid message format received from server.");
    //     }
    //   } catch (e) {
    //     print("Error parsing message: $e");
    //   }
    // });
  }

  // Getter for messages
  List<ChatMessage> get messages => _messages;

  void addMessage(ChatMessage message) {
    _messages.add(message);
    notifyListeners();
  }
}
