// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:socket_io_client/socket_io_client.dart' as IO;
//
// class Socket1 extends StatefulWidget {
//   const Socket1({super.key});
//
//   @override
//   State<Socket1> createState() => _Socket1State();
// }
//
// class _Socket1State extends State<Socket1> {
//   late IO.Socket socket;
//
//   @override
//   void initState() {
//     super.initState();
//     _initializeSocket();
//   }
//
//   Future<void> _initializeSocket() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     String? accessToken = prefs.getString('accessToken');
//
//     socket = IO.io(
//       'wss://snack-mate-backend-production.up.railway.app',
//       IO.OptionBuilder()
//           .setTransports(['websocket'])
//           .setExtraHeaders({'Authorization': 'Bearer $accessToken'})
//           .build(),
//     );
//
//     socket.onConnect((_) {
//       print('Connected');
//       socket.emit('msg', 'test');
//     });
//
//     socket.onConnectError((data) {
//       print('Connection Error: $data');
//     });
//
//     socket.onDisconnect((_) {
//       print('Disconnected');
//     });
//   }
//
//   @override
//   void dispose() {
//     socket.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Sockets Testing'),
//       ),
//       body: Center(
//         child: const Text('Check console for socket connection logs.'),
//       ),
//     );
//   }
// }
