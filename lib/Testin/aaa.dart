
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
// import '../MyFunctions/Funtions.dart';
// import 'signupscreen.dart';
// // ignore: unused_import
// import '../Dashboard/HomeScreen.dart';
// import '../components/bottomNavigatorBar.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: LoginScreen(),
//     );
//   }
// }

// class LoginScreen extends StatelessWidget {
//   const LoginScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final TextEditingController _usernameController = TextEditingController();
//     final TextEditingController _passwordController = TextEditingController();

//     Future<void> l(BuildContext context) async {
//       final url = 'http:// 192.168.10.34:8000/auth/register';

//       final body = {
//         'username': _usernameController.text,
//         'password': _passwordController.text,
//       };

//       try {
//         final response = await http.post(
//           Uri.parse(url),
//           headers: {
//             'Content-Type': 'application/json',
//           },
//           body: jsonEncode(body),
//         );

//         if (response.statusCode == 200) {
//           // Handle successful signup
//           print('Login successful');
//           My_Funtions.f_toast(context, 'Login successful', Colors.green);
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => LoginScreen()),
//           );
//         } else {
//           // Handle signup failure
//           My_Funtions.f_toast(context, 'Login failed', Colors.red);
//           print('Signup failed');
//         }
//       } catch (e) {
//         // Handle exceptions
//         My_Funtions.f_toast(context, 'An error occurred', Colors.red);
//         print('An error occurred: $e');
//       }
//     }

//     return Scaffold(
//       body: Stack(
//         children: [
//           // THIS IS THE BACKGROUND OF THE LOGIN SCREEN
//           Container(
//             width: 432,
//             height: 932,
//             decoration: BoxDecoration(
//               image: const DecorationImage(
//                 image: AssetImage('assets/images/backgroundimage.png'),
//                 fit: BoxFit.cover,
//               ),
//               color: Colors.black.withOpacity(0.9),
//             ),
//           ),
//           // THIS IS THE LINEAR GRADIENT SHADOW
//           Container(
//             width: 432,
//             height: 932,
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 begin: const Alignment(0.01, 1.00),
//                 end: const Alignment(-0.01, -1),
//                 colors: [Colors.black, Colors.black.withOpacity(0.1)],
//               ),
//             ),
//           ),
//           SizedBox(
//             width: 340,
//             height: 701,
//             // THIS IS THE MAIN STACK WIDGET
//             child: Stack(
//               children: [
//                 Positioned(
//                   left: 50,
//                   top: 575,
//                   child: SizedBox(
//                     width: 255.08,
//                     height: 17,
//                     child: Stack(
//                       children: [
//                         //LETTER OR WITH 2 LINES ALONG IT
//                         Positioned(
//                           left: 0,
//                           top: 10.08,
//                           child: Container(
//                             width: 111.78,
//                             decoration: const ShapeDecoration(
//                               shape: RoundedRectangleBorder(
//                                 side: BorderSide(
//                                   width: 0.59,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               shadows: [
//                                 BoxShadow(
//                                   color: Color(0x3F000000),
//                                   blurRadius: 2.38,
//                                   offset: Offset(0, 2.38),
//                                   spreadRadius: 0,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 143.30,
//                           top: 10.08,
//                           child: Container(
//                             width: 111.78,
//                             decoration: const ShapeDecoration(
//                               shape: RoundedRectangleBorder(
//                                 side: BorderSide(
//                                   width: 0.59,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               shadows: [
//                                 BoxShadow(
//                                   color: Color(0x3F000000),
//                                   blurRadius: 2.38,
//                                   offset: Offset(0, 2.38),
//                                   spreadRadius: 0,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 117.11,
//                           top: 2,
//                           child: Text(
//                             'OR',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 14.27,
//                               fontFamily: 'Lato',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                               letterSpacing: -0.29,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 // THIS IS THE SIGNUP LINE AT THE BOTTOM OF THE SCREEN WITH INKWELL INCLUDED
//                 Positioned(
//                   left: 34,
//                   top: 682,
//                   child: InkWell(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) => SignupScreen()),
//                       );
//                     },
//                     child: const Text.rich(
//                       TextSpan(
//                         children: [
//                           TextSpan(
//                             text: 'First time here?',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 16,
//                               fontFamily: 'Lato',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                           TextSpan(
//                             text: ' Sign Up for an account',
//                             style: TextStyle(
//                               color: Color(0xFF00ECB4),
//                               fontSize: 16,
//                               fontFamily: 'Lato',
//                               fontWeight: FontWeight.w500,
//                               height: 0,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 // EATALY LOGO AT THE TOP OF THE SCREEN
//                 Positioned(
//                   top: 56,
//                   left: (340 - 140) / 2,
//                   child: SizedBox(
//                     width: 150,
//                     height: 100,
//                     child: Image.asset(
//                       'assets/images/eataly.png',
//                       fit: BoxFit.fill,
//                     ),
//                   ),
//                 ),
//                 // INSTANT TABLE RESERVATIONS AFTER THE EATALY LOGO
//                 Positioned(
//                   left: 47,
//                   top: 170,
//                   child: SizedBox(
//                     width: 262,
//                     child: Text(
//                       'Instant Table Reservations!',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 20,
//                         fontFamily: 'Forum',
//                         fontWeight: FontWeight.w400,
//                         height: 0.06,
//                       ),
//                     ),
//                   ),
//                 ),
//                 // LOGIN BUTTON TEXT
//                 Positioned(
//                   left: 7,
//                   top: 250,
//                   child: SizedBox(
//                     width: 340,
//                     height: 278,
//                     child: Column(
//                       mainAxisSize: MainAxisSize.min,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         const Text(
//                           'Log In',
//                           style: TextStyle(
//                             color: Color(0xFF00ECB4),
//                             fontSize: 26,
//                             fontFamily: 'Lato',
//                             fontWeight: FontWeight.w700,
//                             height: 0.03,
//                           ),
//                         ),
//                         const SizedBox(height: 25),
//                         SizedBox(
//                           width: 350,
//                           height: 99,
//                           child: Stack(
//                             children: [
//                               // THIS IS THE PHONE-NUMBER TEXTEDITCONTROLLOR
//                               Positioned(
//                                 left: 22.5,
//                                 top: 35,
//                                 child: Container(
//                                   width: 300,
//                                   height: 50,
//                                   decoration: ShapeDecoration(
//                                     color: const Color(0x33D9D9D9),
//                                     shape: RoundedRectangleBorder(
//                                       side: const BorderSide(
//                                           width: 1, color: Colors.white),
//                                       borderRadius: BorderRadius.circular(8),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               const Positioned(
//                                 left: 22.5,
//                                 top: 5,
//                                 child: SizedBox(
//                                   width: 300,
//                                   height: 28,
//                                   child: Text(
//                                     'Phone Number',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 16,
//                                       fontFamily: 'Lato',
//                                       fontWeight: FontWeight.w400,
//                                       height: 0,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Positioned(
//                                 left: 30,
//                                 top: 57,
//                                 child: SizedBox(
//                                     width: 173,
//                                     height: 16,
//                                     child: TextFormField(
//                                       keyboardType: TextInputType.phone,
//                                       maxLength: 11,
//                                       decoration: InputDecoration(
//                                         hintText: 'Enter Your Phone Number',
//                                         hintStyle: TextStyle(
//                                           color: Color(0xFFD3D3D3),
//                                           fontSize: 14,
//                                           fontFamily: 'Lato',
//                                           fontWeight: FontWeight.w400,
//                                         ),
//                                         border: InputBorder
//                                             .none, // Remove underline
//                                         counterText:
//                                             '', // Hide the default counter text
//                                       ),
//                                       style: TextStyle(
//                                         color: Color(
//                                             0xFFD3D3D3), // Set text color to be visible when user enters text
//                                       ),
//                                     )),
//                               ),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(height: 0),
//                         SizedBox(
//                           width: 350,
//                           height: 99,
//                           child: Stack(
//                             children: [
//                               Positioned(
//                                 left: 22.5,
//                                 top: 35,
//                                 child: Container(
//                                   width: 300,
//                                   height: 50,
//                                   decoration: ShapeDecoration(
//                                     color: const Color(0x33D9D9D9),
//                                     shape: RoundedRectangleBorder(
//                                       side: const BorderSide(
//                                           width: 1, color: Colors.white),
//                                       borderRadius: BorderRadius.circular(8),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               const Positioned(
//                                 left: 22.5,
//                                 top: 5,
//                                 child: SizedBox(
//                                   width: 340,
//                                   height: 28,
//                                   child: Text(
//                                     'Password',
//                                     style: TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 16,
//                                       fontFamily: 'Lato',
//                                       fontWeight: FontWeight.w400,
//                                       height: 0,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               const Positioned(
//                                 left: 30,
//                                 top: 58,
//                                 child: SizedBox(
//                                   width: 173,
//                                   height: 16,
//                                   child: TextField(
//                                     decoration: InputDecoration(
//                                       hintText: 'Enter Your Password',
//                                       hintStyle: TextStyle(
//                                         color: Color(0xFFD3D3D3),
//                                         fontSize: 14,
//                                         fontFamily: 'Lato',
//                                         fontWeight: FontWeight.w400,
//                                       ),
//                                       border:
//                                           InputBorder.none, // Remove underline
//                                     ),
//                                     style: TextStyle(
//                                       color: Color(
//                                           0xFFD3D3D3), // Set text color to be visible when user enters text
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   left: 107,
//                   top: 605,
//                   child: SizedBox(
//                     width: 154,
//                     height: 69,
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Expanded(
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               SizedBox(
//                                 width: 59,
//                                 height: 59,
//                                 // decoration: const ShapeDecoration(
//                                 //   color: Color(0xFFECECEC),
//                                 //   // shape: CircleBorder(
//                                 //   //   side: BorderSide(
//                                 //   //       width: 0.50, color: Color(0xFF00B287)),
//                                 //   // ),
//                                 //   shadows: [
//                                 //     BoxShadow(
//                                 //       color: Color(0x3F000000),
//                                 //       blurRadius: 4,
//                                 //       offset: Offset(0, 0),
//                                 //       spreadRadius: 0,
//                                 //     ),
//                                 //   ],
//                                 // ),
//                                 child: Container(
//                                   width: 32,
//                                   height: 32,
//                                   decoration: const BoxDecoration(
//                                     shape: BoxShape.circle,
//                                     image: DecorationImage(
//                                       image: AssetImage(
//                                           "assets/images/facebook1.png"),
//                                       fit: BoxFit.fill,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(width: 10),
//                             ],
//                           ),
//                         ),
//                         const SizedBox(width: 16),
//                         Expanded(
//                           child: Row(
//                             mainAxisSize: MainAxisSize.min,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               SizedBox(
//                                 width: 59,
//                                 height: 59,
//                                 // decoration: const ShapeDecoration(
//                                 //   color: Color(0xFFECECEC),
//                                 //   shape: CircleBorder(
//                                 //     side: BorderSide(
//                                 //         width: 0.50, color: Color(0xFF00B287)),
//                                 //   ),
//                                 //   shadows: [
//                                 //     BoxShadow(
//                                 //       color: Color(0x3F000000),
//                                 //       blurRadius: 4,
//                                 //       offset: Offset(0, 0),
//                                 //       spreadRadius: 0,
//                                 //     ),
//                                 //   ],
//                                 // ),
//                                 child: Center(
//                                   child: Container(
//                                     width: 62,
//                                     height: 62,
//                                     decoration: const BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       image: DecorationImage(
//                                         image: AssetImage(
//                                             "assets/images/google1.png"),
//                                         fit: BoxFit.fill,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(width: 10),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   left: 7,
//                   top: 490,
//                   child: SizedBox(
//                     width: 340,
//                     height: 99,
//                     child: Stack(
//                       children: [
//                         Positioned(
//                           left: 22.5,
//                           top: 0,
//                           child: GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) =>
//                                         const BottomNavigationBarMenu()),
//                               );
//                             },
//                             child: Container(
//                               width: 300,
//                               height: 50,
//                               decoration: ShapeDecoration(
//                                 color: const Color(0xFF00B287),
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(8)),
//                               ),
//                             ),
//                           ),
//                         ),
//                         const Positioned(
//                           left: 138,
//                           top: 24,
//                           child: SizedBox(
//                             width: 61,
//                             height: 24,
//                             child: Text(
//                               'Log In',
//                               style: TextStyle(
//                                 color: Color(0xFFD3D3D3),
//                                 fontSize: 17,
//                                 fontFamily: 'Lato',
//                                 fontWeight: FontWeight.w700,
//                                 height: 0.06,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
