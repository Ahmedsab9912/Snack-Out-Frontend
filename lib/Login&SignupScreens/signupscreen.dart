// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'otpscreen.dart';

// class SignupScreen extends StatefulWidget {
//   const SignupScreen({super.key});

//   @override
//   _SignupScreenState createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   final _formKey = GlobalKey<FormState>();
//   final _nameController = TextEditingController();
//   final _phoneController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _confirmPasswordController = TextEditingController();

//   Future<void> _register() async {
//     if (_formKey.currentState!.validate()) {
//       final name = _nameController.text;
//       final phone = _phoneController.text;
//       final password = _passwordController.text;
//       final confirmPassword = _confirmPasswordController.text;

//       if (password != confirmPassword) {
//         // Show error message
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text("Passwords do not match")),
//         );
//         return;
//       }

//       final response = await http.post(
//         Uri.parse(
//             'http://10.0.2.2:8000/auth/register'), // Replace with your API URL
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: jsonEncode(<String, dynamic>{
//           'name': name,
//           'phoneNumber': phone,
//           'password': password,
//           'username': 'Sarah1',
//           'email': 'sarah1233333@gmail.com',
//           'phoneNumberVerification': true,
//           'email_verification': true,
//           'address': '123 Lhr',
//           'vendor': false,
//           "roles": ["user"]
//         }),
//       );
//       if (response.statusCode == 200) {
//         // Registration successful, navigate to OTP screen
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => const OtpScreen()),
//         );
//       } else {
//         // Show error message
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text("Failed to register")),
//         );
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             width: 432,
//             height: 932,
//             decoration: BoxDecoration(
//               image: const DecorationImage(
//                 image: AssetImage('assets/images/backgroundimage.png'),
//                 fit: BoxFit.cover,
//               ),
//               color: Colors.black.withOpacity(0.6),
//             ),
//           ),
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
//           Positioned(
//             top: 56,
//             left: (340 - 140) / 2,
//             child: SizedBox(
//               width: 150,
//               height: 100,
//               child: Image.asset(
//                 'assets/images/eataly.png',
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ),
//           const Positioned(
//             left: 47,
//             top: 170,
//             child: SizedBox(
//               width: 262,
//               child: Text(
//                 'Instant Table Reservations!',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 20,
//                   fontFamily: 'Forum',
//                   fontWeight: FontWeight.w400,
//                   height: 0.06,
//                 ),
//               ),
//             ),
//           ),
//           const Positioned(
//             left: (340 - 80) / 2,
//             top: 230,
//             child: Text(
//               'Sign Up',
//               style: TextStyle(
//                 color: Color(0xFF00ECB4),
//                 fontSize: 26,
//                 fontFamily: 'Lato',
//                 fontWeight: FontWeight.w700,
//                 height: 0.03,
//               ),
//             ),
//           ),
//           Positioned(
//             top: 265,
//             child: SizedBox(
//               width: 350,
//               height: 99,
//               child: Stack(
//                 children: [
//                   Positioned(
//                     left: 28,
//                     top: 35,
//                     child: Container(
//                       width: 300,
//                       height: 50,
//                       decoration: ShapeDecoration(
//                         color: const Color(0x33D9D9D9),
//                         shape: RoundedRectangleBorder(
//                           side: const BorderSide(width: 1, color: Colors.white),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const Positioned(
//                     left: 28,
//                     top: 5,
//                     child: SizedBox(
//                       width: 300,
//                       height: 28,
//                       child: Text(
//                         'Name',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16,
//                           fontFamily: 'Lato',
//                           fontWeight: FontWeight.w400,
//                           height: 0,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     left: 35,
//                     top: 58,
//                     child: SizedBox(
//                       width: 173,
//                       height: 16,
//                       child: TextFormField(
//                         controller: _nameController,
//                         keyboardType: TextInputType.name,
//                         maxLength: 16,
//                         decoration: InputDecoration(
//                           hintText: 'Enter Your Name',
//                           hintStyle: TextStyle(
//                             color: Color(0xFFD3D3D3),
//                             fontSize: 14,
//                             fontFamily: 'Lato',
//                             fontWeight: FontWeight.w400,
//                           ),
//                           border: InputBorder.none, // Remove underline
//                           counterText: '', // Hide the default counter text
//                         ),
//                         style: TextStyle(
//                           color: Color(
//                               0xFFD3D3D3), // Set text color to be visible when user enters text
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             top: 357,
//             child: SizedBox(
//               width: 350,
//               height: 99,
//               child: Stack(
//                 children: [
//                   Positioned(
//                     left: 28,
//                     top: 35,
//                     child: Container(
//                       width: 300,
//                       height: 50,
//                       decoration: ShapeDecoration(
//                         color: const Color(0x33D9D9D9),
//                         shape: RoundedRectangleBorder(
//                           side: const BorderSide(width: 1, color: Colors.white),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const Positioned(
//                     left: 28,
//                     top: 5,
//                     child: SizedBox(
//                       width: 300,
//                       height: 28,
//                       child: Text(
//                         'Phone Number',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16,
//                           fontFamily: 'Lato',
//                           fontWeight: FontWeight.w400,
//                           height: 0,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     left: 35,
//                     top: 58,
//                     child: SizedBox(
//                       width: 173,
//                       height: 16,
//                       child: TextFormField(
//                         controller: _phoneController,
//                         keyboardType: TextInputType.phone,
//                         maxLength: 11,
//                         decoration: InputDecoration(
//                           hintText: 'Enter Your Phone Number',
//                           hintStyle: TextStyle(
//                             color: Color(0xFFD3D3D3),
//                             fontSize: 14,
//                             fontFamily: 'Lato',
//                             fontWeight: FontWeight.w400,
//                           ),
//                           border: InputBorder.none, // Remove underline
//                           counterText: '', // Hide the default counter text
//                         ),
//                         style: TextStyle(
//                           color: Color(
//                               0xFFD3D3D3), // Set text color to be visible when user enters text
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             top: 447,
//             child: SizedBox(
//               width: 350,
//               height: 99,
//               child: Stack(
//                 children: [
//                   Positioned(
//                     left: 28,
//                     top: 35,
//                     child: Container(
//                       width: 300,
//                       height: 50,
//                       decoration: ShapeDecoration(
//                         color: const Color(0x33D9D9D9),
//                         shape: RoundedRectangleBorder(
//                           side: const BorderSide(width: 1, color: Colors.white),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const Positioned(
//                     left: 28,
//                     top: 5,
//                     child: SizedBox(
//                       width: 300,
//                       height: 28,
//                       child: Text(
//                         'Password',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16,
//                           fontFamily: 'Lato',
//                           fontWeight: FontWeight.w400,
//                           height: 0,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     left: 35,
//                     top: 58,
//                     child: SizedBox(
//                       width: 173,
//                       height: 16,
//                       child: TextFormField(
//                         controller: _passwordController,
//                         keyboardType: TextInputType.visiblePassword,
//                         decoration: InputDecoration(
//                           hintText: 'Enter Your Password',
//                           hintStyle: TextStyle(
//                             color: Color(0xFFD3D3D3),
//                             fontSize: 14,
//                             fontFamily: 'Lato',
//                             fontWeight: FontWeight.w400,
//                           ),
//                           border: InputBorder.none, // Remove underline
//                         ),
//                         style: TextStyle(
//                           color: Color(
//                               0xFFD3D3D3), // Set text color to be visible when user enters text
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             top: 539,
//             child: SizedBox(
//               width: 350,
//               height: 99,
//               child: Stack(
//                 children: [
//                   Positioned(
//                     left: 28,
//                     top: 35,
//                     child: Container(
//                       width: 300,
//                       height: 50,
//                       decoration: ShapeDecoration(
//                         color: const Color(0x33D9D9D9),
//                         shape: RoundedRectangleBorder(
//                           side: const BorderSide(width: 1, color: Colors.white),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                     ),=
//                   ),
//                   const Positioned(
//                     left: 28,
//                     top: 5,
//                     child: SizedBox(
//                       width: 300,
//                       height: 28,
//                       child: Text(
//                         'Confirm Password',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 16,
//                           fontFamily: 'Lato',
//                           fontWeight: FontWeight.w400,
//                           height: 0,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Positioned(
//                     left: 35,
//                     top: 58,
//                     child: SizedBox(
//                       width: 173,
//                       height: 16,
//                       child: TextFormField(
//                         controller: _confirmPasswordController,
//                         keyboardType: TextInputType.visiblePassword,
//                         obscureText: true,
//                         decoration: InputDecoration(
//                           hintText: 'Re-enter Your Password',
//                           hintStyle: TextStyle(
//                             color: Color(0xFFD3D3D3),
//                             fontSize: 14,
//                             fontFamily: 'Lato',
//                             fontWeight: FontWeight.w400,
//                           ),
//                           border: InputBorder.none, // Remove underline
//                         ),
//                         style: TextStyle(
//                           color: Color(
//                               0xFFD3D3D3), // Set text color to be visible when user enters text
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             left: 7,
//             top: 650,
//             child: SizedBox(
//               width: 340,
//               height: 99,
//               child: Stack(
//                 children: [
//                   Positioned(
//                     left: 22.5,
//                     top: 0,
//                     child: GestureDetector(
//                       onTap: _register,
//                       child: Container(
//                         width: 300,
//                         height: 50,
//                         decoration: ShapeDecoration(
//                           color: const Color(0xFF00B287),
//                           shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8)),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'loginscreen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class My_Funtions {
  static f_toast(BuildContext context, String msg, var clr) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: clr,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _phoneNumberVerificationController =
      TextEditingController();
  final TextEditingController _emailVerificationController =
      TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _vendorController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();

  final FocusNode _usernameFocusNode = FocusNode();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _phoneNumberFocusNode = FocusNode();
  final FocusNode _phoneNumberVerificationFocusNode = FocusNode();
  final FocusNode _emailVerificationFocusNode = FocusNode();
  final FocusNode _addressFocusNode = FocusNode();
  final FocusNode _vendorFocusNode = FocusNode();
  final FocusNode _roleFocusNode = FocusNode();

  @override
  void dispose() {
    // Dispose controllers and focus nodes to avoid memory leaks
    _usernameController.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _phoneNumberController.dispose();
    _phoneNumberVerificationController.dispose();
    _emailVerificationController.dispose();
    _addressController.dispose();
    _vendorController.dispose();
    _roleController.dispose();

    _usernameFocusNode.dispose();
    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _phoneNumberFocusNode.dispose();
    _phoneNumberVerificationFocusNode.dispose();
    _emailVerificationFocusNode.dispose();
    _addressFocusNode.dispose();
    _vendorFocusNode.dispose();
    _roleFocusNode.dispose();
    super.dispose();
  }

  Future<void> submitSignup(BuildContext context) async {
    final url = 'http://192.168.10.34:8000/auth/register';

    if (_formKey.currentState?.validate() ?? false) {
      final body = {
        'username': _usernameController.text,
        'name': _nameController.text,
        'email': _emailController.text,
        'password': _passwordController.text,
        'phoneNumber': _phoneNumberController.text,
        'phoneNumberVerification':
            _phoneNumberVerificationController.text.toLowerCase() == 'true',
        'email_verification':
            _emailVerificationController.text.toLowerCase() == 'true',
        'address': _addressController.text,
        'vendor': _vendorController.text.toLowerCase() == 'false',
        'roles': ["user"],
      };

      try {
        final response = await http.post(
          Uri.parse(url),
          headers: {
            'Content-Type': 'application/json',
          },
          body: jsonEncode(body),
        );

        if (response.statusCode == 200) {
          // Handle successful signup
          print('Signup successful');
          My_Funtions.f_toast(context, 'Registration successful', Colors.green);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        } else {
          // Handle signup failure
          My_Funtions.f_toast(context, 'Registration failed', Colors.red);
          print('Signup failed');
        }
      } catch (e) {
        // Handle exceptions
        My_Funtions.f_toast(context, 'An error occurred', Colors.red);
        print('An error occurred: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _usernameController,
                focusNode: _usernameFocusNode,
                decoration: InputDecoration(labelText: 'Username'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_nameFocusNode);
                },
              ),
              TextFormField(
                controller: _nameController,
                focusNode: _nameFocusNode,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_emailFocusNode);
                },
              ),
              TextFormField(
                controller: _emailController,
                focusNode: _emailFocusNode,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty || !value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_passwordFocusNode);
                },
              ),
              TextFormField(
                controller: _passwordController,
                focusNode: _passwordFocusNode,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_phoneNumberFocusNode);
                },
              ),
              TextFormField(
                controller: _phoneNumberController,
                focusNode: _phoneNumberFocusNode,
                decoration: InputDecoration(labelText: 'Phone Number'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone number';
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context)
                      .requestFocus(_phoneNumberVerificationFocusNode);
                },
              ),
              TextFormField(
                controller: _phoneNumberVerificationController,
                focusNode: _phoneNumberVerificationFocusNode,
                decoration:
                    InputDecoration(labelText: 'Phone Number Verification'),
                enabled: false,
                // validator: (value) {
                //   if (value == null ||
                //       value.isEmpty ||
                //       (value.toLowerCase() != 'true' &&
                //           value.toLowerCase() != 'false')) {
                //     return 'Please enter true or false';
                //   }
                //   return null;
                // },
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context)
                      .requestFocus(_emailVerificationFocusNode);
                },
              ),
              TextFormField(
                controller: _emailVerificationController,
                focusNode: _emailVerificationFocusNode,
                decoration: InputDecoration(labelText: 'Email Verification'),
                enabled: false,
                // validator: (value) {
                //   if (value == null ||
                //       value.isEmpty ||
                //       (value.toLowerCase() != 'true' &&
                //           value.toLowerCase() != 'false')) {
                //     return 'Please enter true or false';
                //   }
                //   return null;
                // },
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_addressFocusNode);
                },
              ),
              TextFormField(
                controller: _addressController,
                focusNode: _addressFocusNode,
                decoration: InputDecoration(labelText: 'Address'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_vendorFocusNode);
                },
              ),
              TextFormField(
                controller: _vendorController,
                focusNode: _vendorFocusNode,
                decoration: InputDecoration(labelText: 'Vendor'),
                enabled: false,
                // validator: (value) {
                //   if (value == null ||
                //       value.isEmpty ||
                //       (value.toLowerCase() != 'true' &&
                //           value.toLowerCase() != 'false')) {
                //     return 'Please enter true or false';
                //   }
                //   return null;
                // },
                // textInputAction: TextInputAction.next,
                // onFieldSubmitted: (_) {
                //   FocusScope.of(context).requestFocus(_roleFocusNode);
                // },
              ),
              TextFormField(
                controller: _roleController,
                focusNode: _roleFocusNode,
                decoration: InputDecoration(labelText: 'Role'),
                enabled: false,
                // validator: (value) {
                //   if (value == null || value.isEmpty) {
                //     return 'Please enter your role';
                //   }
                //   return null;
                // },
                // textInputAction: TextInputAction.done,
                // onFieldSubmitted: (_) {
                //   submitSignup(context);
                // },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  submitSignup(context);
                },
                child: Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
