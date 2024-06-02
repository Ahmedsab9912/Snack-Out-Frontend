import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../MyFunctions/Funtions.dart';
import '../OTP_Screens/OTP_Screen.dart';
import '../app_theme/app_theme.dart';
import 'loginscreen.dart';
import '../app_theme/app_colors.dart'; // Import custom colors

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
  final TextEditingController _addressController = TextEditingController();

  final FocusNode _usernameFocusNode = FocusNode();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _phoneNumberFocusNode = FocusNode();
  final FocusNode _addressFocusNode = FocusNode();

  @override
  void dispose() {
    _usernameController.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _phoneNumberController.dispose();
    _addressController.dispose();
    _usernameFocusNode.dispose();
    _nameFocusNode.dispose();
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    _phoneNumberFocusNode.dispose();
    _addressFocusNode.dispose();
    super.dispose();
  }

  bool _validatePassword(String password) {
    final RegExp passwordExp = RegExp(
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\W).+$',
    );
    return passwordExp.hasMatch(password);
  }

  Future<void> submitSignup(BuildContext context) async {
    const url = 'http://192.168.100.136:8000/auth/register';

    if (_formKey.currentState?.validate() ?? false) {
      final body = {
        'username': _usernameController.text,
        'name': _nameController.text,
        'email': _emailController.text,
        'password': _passwordController.text,
        'phoneNumber': _phoneNumberController.text,
        'address': _addressController.text,
        'phoneNumberVerification': false,
        'emailVerification': false,
        'roles': [],
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
          print('Signup successful');
          My_Funtions.f_toast(context, 'Registration successful', Colors.green);

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OTPScreen(
                email: _emailController.text,
                phoneNumber: _phoneNumberController.text,
              ),
            ),
          );
        } else {
          My_Funtions.f_toast(context, 'Registration failed', Colors.red);
          print('Signup failed');
        }
      } catch (e) {
        My_Funtions.f_toast(context, 'An error occurred', Colors.red);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    final containerHeight = screenSize.height * 0.065;
    final containerWidth = screenSize.width * 0.9;
    final imageHeight = screenSize.height * 0.33;
    final imageWidth = screenSize.width * 1;
    final buttonHeight = screenSize.height * 0.07;
    final buttonWidth = screenSize.width * 0.8;
    final containerPadding = screenSize.height * 0.02;

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Sign Up'),
      //   backgroundColor: AppColors.appBarColor,
      // ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: imageHeight,
              width: imageWidth,
              child: Image.asset("assets/images/pattern.png"),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 300),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 25,
                          color: AppColors.primaryTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.only(right: 315),
                      child: Text(
                        'Username',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: containerHeight,
                      width: containerWidth,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFA6A6A6),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _usernameController,
                          focusNode: _usernameFocusNode,
                          decoration: InputDecoration(
                            hintText: 'Your Username',
                            border: InputBorder.none,
                          ),
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
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.only(right: 340),
                      child: Text(
                        'Name',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: containerHeight,
                      width: containerWidth,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFA6A6A6),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _nameController,
                          focusNode: _nameFocusNode,
                          decoration: InputDecoration(
                            hintText: 'Your Name',
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.next,
                          onFieldSubmitted: (_) {
                            FocusScope.of(context)
                                .requestFocus(_emailFocusNode);
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.only(right: 340),
                      child: Text(
                        'Email',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: containerHeight,
                      width: containerWidth,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFA6A6A6),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _emailController,
                          focusNode: _emailFocusNode,
                          decoration: InputDecoration(
                            hintText: 'Your Email',
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                !value.contains('@')) {
                              return 'Please enter a valid email';
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.next,
                          onFieldSubmitted: (_) {
                            FocusScope.of(context)
                                .requestFocus(_passwordFocusNode);
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.only(right: 320),
                      child: Text(
                        'Password',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: containerHeight,
                      width: containerWidth,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFA6A6A6),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _passwordController,
                          focusNode: _passwordFocusNode,
                          decoration: InputDecoration(
                            hintText: 'Your Password',
                            border: InputBorder.none,
                          ),
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a password';
                            }
                            if (!_validatePassword(value)) {
                              return 'Password must contain upper, lower, and special characters';
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.next,
                          onFieldSubmitted: (_) {
                            FocusScope.of(context)
                                .requestFocus(_phoneNumberFocusNode);
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.only(right: 280),
                      child: Text(
                        'Phone Number',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        SizedBox(width: 5.0,),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0), // Adjust horizontal padding
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/pakistan_flag.png',
                                width: 28,
                                height: 28,
                              ),
                              SizedBox(width: 4),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 5,left: 3.0),
                                  child: Text(
                                    '+92',
                                    style: TextStyle(),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: containerHeight,
                          width: 305,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFA6A6A6),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              textAlign: TextAlign.left,
                              maxLength: 10,
                              keyboardType: TextInputType.number,
                              controller: _phoneNumberController,
                              focusNode: _phoneNumberFocusNode,
                              enabled: true,
                              style: TextStyle(fontSize: 16.0), // Adjust the font size as needed
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric( vertical: 6,horizontal: 10.0), // Adjust padding
                                border: InputBorder.none,
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your phone number';
                                }
                                return null;
                              },
                              textInputAction: TextInputAction.next,
                              onFieldSubmitted: (_) {
                                FocusScope.of(context).requestFocus(_addressFocusNode);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.only(right: 325),
                      child: Text(
                        'Address',
                        style: TextStyle(fontSize: 17, color: Colors.black),
                      ),
                    ),
                    SizedBox(height: 5),
                    Container(
                      height: containerHeight,
                      width: containerWidth,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFA6A6A6),
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _addressController,
                          focusNode: _addressFocusNode,
                          decoration: InputDecoration(
                            hintText: '  Your Address',
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your address';
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.done,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        submitSignup(context);
                      },
                      child: Container(
                        height: buttonHeight,
                        width: buttonWidth,
                        decoration: BoxDecoration(
                          color: AppColors.buttonColor,
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Center(
                            child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.0,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?',
                            style:
                                TextStyle(fontSize: 17.0, color: Colors.black),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Log In your Account',
                            style: TextStyle(
                                fontSize: 17.0,
                                color: AppColors.primaryTextColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
