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
  late IO.Socket socket; // Add socket here
  final List<ChatMessage> _messages = []; // Move _messages here

  ChatProvider() {
    // Constructor to initialize the socket
    _initializeSocket();
  }

  void _initializeSocket() {
    socket = IO.io(
      'wss://snack-mate-backend-production.up.railway.app',
      IO.OptionBuilder()
          .setTransports(['websocket'])
          .disableAutoConnect() // Disable auto-connect
          .build(),
    );
  }
  // Getter for messages
  List<ChatMessage> get messages =>
      _messages;

  void addMessage(ChatMessage message) {
    _messages.add(message);
    notifyListeners();
  }

}
