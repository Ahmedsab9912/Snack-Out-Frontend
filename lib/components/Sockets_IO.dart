import 'package:shared_preferences/shared_preferences.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'dart:convert';

class SocketManager {
  static IO.Socket? socket;

  static Future<void> initializeSocket() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? accessToken = prefs.getString('accessToken');

    socket = IO.io(
      'wss://snack-mate-backend-production.up.railway.app',
      IO.OptionBuilder()
          .setTransports(['websocket'])
          .setExtraHeaders({'access_token': accessToken ?? ''}) // Ensure accessToken is not null
          .build(),
    );

    socket!.onConnect((_) {
      print('Connected');
      socket!.emit('party/join', 'your_invite_code'); // Replace 'your_invite_code' with actual value
    });

    socket!.on("party/info", (data) => print(jsonEncode(data)));

    socket!.on("party/new-message", (data) => print(jsonEncode(data)));

    socket!.onConnectError((data) {
      print('Connection Error: $data');
    });

    socket!.onDisconnect((_) {
      print('Disconnected');
    });
  }

  static void disposeSocket() {
    socket?.dispose();
    socket?.close();
  }
}
