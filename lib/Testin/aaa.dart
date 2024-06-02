// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// import '../MyFunctions/Funtions.dart';
// import '../OTP_Screens/OTP_Screen.dart';
// import 'loginscreen.dart';
//
//
// class SignupScreen extends StatefulWidget {
//   const SignupScreen({Key? key}) : super(key: key);
//
//   @override
//   _SignupScreenState createState() => _SignupScreenState();
// }
//
// class _SignupScreenState extends State<SignupScreen> {
//   final _formKey = GlobalKey<FormState>();
//
//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//   final TextEditingController _phoneNumberController = TextEditingController();
//   final TextEditingController _phoneNumberVerificationController = TextEditingController();
//   final TextEditingController _emailVerificationController = TextEditingController();
//   final TextEditingController _addressController = TextEditingController();
//   final TextEditingController _vendorController = TextEditingController();
//   final TextEditingController _roleController = TextEditingController();
//
//   final FocusNode _usernameFocusNode = FocusNode();
//   final FocusNode _nameFocusNode = FocusNode();
//   final FocusNode _emailFocusNode = FocusNode();
//   final FocusNode _passwordFocusNode = FocusNode();
//   final FocusNode _phoneNumberFocusNode = FocusNode();
//   final FocusNode _phoneNumberVerificationFocusNode = FocusNode();
//   final FocusNode _emailVerificationFocusNode = FocusNode();
//   final FocusNode _addressFocusNode = FocusNode();
//   final FocusNode _vendorFocusNode = FocusNode();
//   final FocusNode _roleFocusNode = FocusNode();
//
//   @override
//   void dispose() {
//     // Dispose controllers and focus nodes to avoid memory leaks
//     _usernameController.dispose();
//     _nameController.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//     _phoneNumberController.dispose();
//     _phoneNumberVerificationController.dispose();
//     _emailVerificationController.dispose();
//     _addressController.dispose();
//     _vendorController.dispose();
//     _roleController.dispose();
//
//     _usernameFocusNode.dispose();
//     _nameFocusNode.dispose();
//     _emailFocusNode.dispose();
//     _passwordFocusNode.dispose();
//     _phoneNumberFocusNode.dispose();
//     _phoneNumberVerificationFocusNode.dispose();
//     _emailVerificationFocusNode.dispose();
//     _addressFocusNode.dispose();
//     _vendorFocusNode.dispose();
//     _roleFocusNode.dispose();
//     super.dispose();
//   }
//
//   bool _validatePassword(String password) {
//     final RegExp passwordExp = RegExp(
//       r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\W).+$',
//     );
//     return passwordExp.hasMatch(password);
//   }
//
//   Future<void> submitSignup(BuildContext context) async {
//     const url = 'http://10.0.2.2:8000/auth/register';
//
//     if (_formKey.currentState?.validate() ?? false) {
//       final body = {
//         'username': _usernameController.text,
//         'name': _nameController.text,
//         'email': _emailController.text,
//         'password': _passwordController.text,
//         'phoneNumber': _phoneNumberController.text,
//         'phoneNumberVerification': _phoneNumberVerificationController.text.toLowerCase() == 'false',
//         'emailVerification': _emailVerificationController.text.toLowerCase() == 'false',
//         'address': _addressController.text,
//         // 'vendor': _vendorController.text.toLowerCase() == 'false',
//         'roles': [],
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
//           // Handle successful signup
//           print('Signup successful');
//           My_Funtions.f_toast(context, 'Registration successful', Colors.green);
//
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => OTPScreen(
//                 email: _emailController.text,
//                 phoneNumber: _phoneNumberController.text,
//               ),
//             ),
//           );
//         } else {
//           // Handle signup failure
//           My_Funtions.f_toast(context, 'Registration failed', Colors.red);
//           print('Signup failed');
//         }
//       } catch (e) {
//         // Handle exceptions
//         My_Funtions.f_toast(context, 'An error occurred', Colors.red);
//         // print('An error occurred: $e');
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     final screenSize = MediaQuery.of(context).size;
//     final width = screenSize.width * 0.95; // 95% of screen width
//     final height = screenSize.height * 0.95; // 95% of screen height
//
//
//     // Define sizes relative to the screen size
//     final containerHeight = screenSize.height * 0.065;
//     final containerWidth = screenSize.width * 0.9;
//     final imageHeight = screenSize.height * 0.36;
//     final imageWidth = screenSize.width * 0.9;
//     final buttonHeight = screenSize.height * 0.07;
//     final buttonWidth = screenSize.width * 0.8;
//     final containerPadding = screenSize.height * 0.02;
//
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Signup'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Form(
//           key: _formKey,
//           child: ListView(
//             children: [
//               TextFormField(
//                 controller: _usernameController,
//                 focusNode: _usernameFocusNode,
//                 decoration: InputDecoration(labelText: 'Username'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your username';
//                   }
//                   return null;
//                 },
//                 textInputAction: TextInputAction.next,
//                 onFieldSubmitted: (_) {
//                   FocusScope.of(context).requestFocus(_nameFocusNode);
//                 },
//               ),
//               TextFormField(
//                 controller: _nameController,
//                 focusNode: _nameFocusNode,
//                 decoration: InputDecoration(labelText: 'Name'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your name';
//                   }
//                   return null;
//                 },
//                 textInputAction: TextInputAction.next,
//                 onFieldSubmitted: (_) {
//                   FocusScope.of(context).requestFocus(_emailFocusNode);
//                 },
//               ),
//               TextFormField(
//                 controller: _emailController,
//                 focusNode: _emailFocusNode,
//                 decoration: InputDecoration(labelText: 'Email'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty || !value.contains('@')) {
//                     return 'Please enter a valid email';
//                   }
//                   return null;
//                 },
//                 textInputAction: TextInputAction.next,
//                 onFieldSubmitted: (_) {
//                   FocusScope.of(context).requestFocus(_passwordFocusNode);
//                 },
//               ),
//               TextFormField(
//                 maxLength: 8,
//                 controller: _passwordController,
//                 focusNode: _passwordFocusNode,
//                 decoration: InputDecoration(labelText: 'Password'),
//                 obscureText: true,
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your password';
//                   } else if (!_validatePassword(value)) {
//                     return 'Password must contain at least 1 upper, 1 lowercase, and 1 special char';
//                   }
//                   return null;
//                 },
//                 textInputAction: TextInputAction.next,
//                 onFieldSubmitted: (_) {
//                   FocusScope.of(context).requestFocus(_phoneNumberFocusNode);
//                 },
//               ),
//               TextFormField(
//                 maxLength: 10,
//                 keyboardType: TextInputType.number,
//                 controller: _phoneNumberController,
//                 focusNode: _phoneNumberFocusNode,
//                 decoration: InputDecoration(
//                   labelText: 'Phone Number',
//                   prefixIcon: Padding(
//                     padding: const EdgeInsets.only(right: 8.0),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Image.asset(
//                           'assets/images/pakistan_flag.png', // Make sure you have the flag image in your assets folder
//                           width: 24,
//                           height: 24,
//                         ),
//                         SizedBox(width: 8),
//                         Text('+92',style: TextStyle(),),
//                       ],
//                     ),
//                   ),
//                 ),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your phone number';
//                   }
//                   return null;
//                 },
//                 textInputAction: TextInputAction.next,
//                 onFieldSubmitted: (_) {
//                   FocusScope.of(context).requestFocus(_phoneNumberVerificationFocusNode);
//                 },
//               ),
//               // ... (remaining fields and widgets)
//               TextFormField(
//                 controller: _addressController,
//                 focusNode: _addressFocusNode,
//                 decoration: InputDecoration(labelText: 'Address'),
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter your address';
//                   }
//                   return null;
//                 },
//                 textInputAction: TextInputAction.next,
//                 onFieldSubmitted: (_) {
//                   FocusScope.of(context).requestFocus(_vendorFocusNode);
//                 },
//               ),
//               SizedBox(height: 20),
//               InkWell(
//                 onTap: () {
//                   submitSignup(context);
//                 },
//                 child: Container(
//                   height: 45,
//                   width: 160,
//                   decoration: BoxDecoration(
//                     color: Colors.purple,
//                     borderRadius: BorderRadius.circular(15.0),
//                   ),
//                   child: Center(
//                     child: Text(
//                       'Sign Up',
//                       style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 19.0,
//                           fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }