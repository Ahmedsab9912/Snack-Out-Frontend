// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'bottom_navigation_bar_menu.dart';  // Make sure you have this import
//
// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }
//
// class _LoginScreenState extends State<LoginScreen> {
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//
//   Future<void> login() async {
//     const url = 'http://10.0.2.2:8000/auth/login';
//
//     if (_formKey.currentState?.validate() ?? false) {
//       final body = {
//         'username': _usernameController.text,
//         'password': _passwordController.text,
//       };
//
//       try {
//         final response = await http.post(
//           Uri.parse(url),
//           headers: {
//             'Content-Type': 'application/json',
//           },
//           body: jsonEncode(body),
//         );
//
//         if (response.statusCode == 200) {
//           // Save username in shared preferences
//           SharedPreferences prefs = await SharedPreferences.getInstance();
//           await prefs.setString('username', _usernameController.text);
//
//           // Handle successful login
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//                 content: Text('Login successful'),
//                 backgroundColor: Colors.green),
//           );
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => BottomNavigationBarMenu()),
//           );
//         } else {
//           // Handle login failure
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//                 content: Text('Login failed'), backgroundColor: Colors.red),
//           );
//         }
//       } catch (e) {
//         // Handle exceptions
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//               content: Text('An error occurred'), backgroundColor: Colors.red),
//         );
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Form(
//         key: _formKey,
//         child: Column(
//           children: <Widget>[
//             TextFormField(
//               controller: _usernameController,
//               decoration: InputDecoration(labelText: 'Username'),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter your username';
//                 }
//                 return null;
//               },
//             ),
//             TextFormField(
//               controller: _passwordController,
//               decoration: InputDecoration(labelText: 'Password'),
//               obscureText: true,
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter your password';
//                 }
//                 return null;
//               },
//             ),
//             ElevatedButton(
//               onPressed: login,
//               child: Text('Login'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
