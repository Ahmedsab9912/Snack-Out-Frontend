// import 'package:flutter/material.dart';
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Stack(
//           children: [
//             Positioned.fill(
//               child: Image.asset(
//                 'assets/images/bg.png',
//                 fit: BoxFit.cover,
//               ),
//             ),
//             SafeArea(
//               child: Column(
//                 children: [
//                   AppBar(
//                     leading: null, // Remove the back button
//                     actions: [
//                       InkWell(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => AddFriendsProfile(),
//                             ),
//                           );
//                         },
//                         child: Container(
//                           margin: EdgeInsets.only(top: 10, right: 50),
//                           child: Image.asset(
//                             'assets/images/addfriend.png', // Replace with your image asset path
//                             width: 50, // Adjust the width as needed
//                             height: 50, // Adjust the height as needed
//                           ),
//                         ),
//                       ),
//                       InkWell(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => EditProfile(),
//                             ),
//                           );
//                         },
//                         child: Container(
//                           margin: EdgeInsets.only(bottom: 50, right: 10),
//                           child: Image.asset(
//                             'assets/images/settings.png', // Replace with your image asset path
//                             width: 50, // Adjust the width as needed
//                             height: 50, // Adjust the height as needed
//                           ),
//                         ),
//                       ),
//                     ],
//                     backgroundColor: Colors.transparent, // Make the AppBar transparent
//                     elevation: 0, // Remove the AppBar shadow
//                   ),
//                   // Add the rest of your UI components here
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class AddFriendsProfile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Add Friends Profile'),
//       ),
//       body: Center(
//         child: Text('Add Friends Profile Page'),
//       ),
//     );
//   }
// }
//
// class EditProfile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Edit Profile'),
//       ),
//       body: Center(
//         child: Text('Edit Profile Page'),
//       ),
//     );
//   }
// }
//
// void main() => runApp(MyApp());
