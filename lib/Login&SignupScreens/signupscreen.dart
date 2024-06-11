import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../API/api.dart';
import '../Models/SignupModel.dart';
import '../MyFunctions/Funtions.dart';
import '../OTP_Screens/OTP_Screen_Phone.dart';
import '../Shared_Preferences/shared_preferences_page.dart';
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

  void _validatePhoneNumber() {
    String currentText = _phoneNumberController.text;
    if (currentText.isNotEmpty && currentText.startsWith('0')) {
      _phoneNumberController.text = currentText.substring(1);
      _phoneNumberController.selection = TextSelection.fromPosition(
        TextPosition(offset: _phoneNumberController.text.length),
      );
    }
  }

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

  bool _validatePassword(String value) {
    String pattern =
        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(value);
  }
  bool _obscureText = true;

  Future<int> submitSignup(BuildContext context) async {
    const url = 'http://192.168.10.20:8000/auth/register';

    if (_formKey.currentState?.validate() ?? false) {
      final body = {
        'username': _usernameController.text,
        'name': _nameController.text,
        'email': _emailController.text,
        'password': _passwordController.text,
        'phoneNumber': '+92' + _phoneNumberController.text,
        'phoneNumberVerification': false,
        'emailVerification': false,
        'roles': [],
      };

      try {
        final response = await http.post(
          Uri.parse(signup),
          headers: {
            'Content-Type': 'application/json',
          },
          body: jsonEncode(body),
        );

        if (response.statusCode == 200) {
          final signupResponse =
          SignupModel.fromJson(jsonDecode(response.body));
          // Save username, accessToken, and userId in shared preferences
          SharedPreferencesPage sharedPreferences = SharedPreferencesPage();
          await sharedPreferences.saveUsername(_usernameController.text);
          int userId = signupResponse.data?.newUser?.id?.toInt() ?? 0;
          await sharedPreferences.saveUserId(userId);

          print('Signup successful');
          My_Funtions.f_toast(context, 'Registration successful', Colors.green);

          // Navigate to OTP page
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OTP_Screen_Phone(
                email: _emailController.text,
                phoneNumber: _phoneNumberController.text,
              ),
            ),
          );

          return userId;
        } else {
          My_Funtions.f_toast(context, 'Registration failed', Colors.red);
          print('Signup failed');
        }
      } catch (e) {
        My_Funtions.f_toast(context, 'An error occurred', Colors.red);
      }
    }
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenSize = MediaQuery.of(context).size;

          final containerHeight = screenSize.height * 0.065;
          final containerWidth = screenSize.width * 0.85;
          final imageHeight = screenSize.height * 0.33;
          final imageWidth = screenSize.width * 1;
          final buttonHeight = screenSize.height * 0.07;
          final buttonWidth = screenSize.width * 0.8;
          final containerPadding = screenSize.height * 0.02;
          return SingleChildScrollView(
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
                          padding: EdgeInsets.only(right: containerWidth * 0.8),
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
                          padding: EdgeInsets.only(right: containerWidth * 0.80),
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
                              style: TextStyle(
                                  color: Colors.black), // Set text color to black
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
                          padding: EdgeInsets.only(right: containerWidth * 0.90),
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
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: _nameController,
                              focusNode: _nameFocusNode,
                              style: TextStyle(
                                  color: Colors.black), // Set text color to black
                              decoration: InputDecoration(
                                hintText: 'Your Name',
                                border: InputBorder.none, // Remove underline
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
                          padding: EdgeInsets.only(right: containerWidth * 0.90),
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
                              style: TextStyle(
                                  color: Colors.black), // Set text color to black
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
                          padding: EdgeInsets.only(right: containerWidth * 0.80),
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
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: _passwordController,
                              focusNode: _passwordFocusNode,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                hintText: 'Your Password',
                                border: InputBorder.none,
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscureText ? Icons.visibility_off : Icons.visibility,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                } else if (!_validatePassword(value)) {
                                  return 'Password must be at least 8 characters, include an uppercase letter, a lowercase letter, and a special character';
                                }
                                return null;
                              },
                              obscureText: _obscureText,
                              textInputAction: TextInputAction.next,
                              onFieldSubmitted: (_) {
                                FocusScope.of(context).requestFocus(_phoneNumberFocusNode);
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Padding(
                          padding: EdgeInsets.only(right: containerWidth * 0.68),
                          child: Text(
                            'Phone Number',
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Container(
                              height: containerHeight,
                              width: screenSize.width * 0.88, // Adjusted width based on screen size
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Color(0xFFA6A6A6),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(screenSize.width * 0.02),
                                child: TextFormField(
                                  maxLength: 10,
                                  controller: _phoneNumberController,
                                  focusNode: _phoneNumberFocusNode,
                                  keyboardType: TextInputType.phone,
                                  textAlignVertical: TextAlignVertical.center, // Align text to the center vertically
                                  textAlign: TextAlign.start, // Align text to the start horizontally
                                  style: TextStyle(color: Colors.black, fontSize: 20), // Set text color to black
                                  decoration: InputDecoration(
                                    // hintText: 'Your Phone Number',
                                    border: InputBorder.none, // Remove underline
                                    contentPadding: EdgeInsets.only(top: 12), // Add padding to the top of the text
                                    prefixIcon: SizedBox(
                                      width: screenSize.width * 0.2, // Adjusted width
                                      child: Padding(
                                        padding: EdgeInsets.only(top:14,right: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Image.asset(
                                              'assets/images/pakistan_flag.png',
                                              width: screenSize.width * 0.09, // Adjusted width
                                              height: screenSize.width * 0.09, // Adjusted height
                                            ),
                                            Text(
                                              '+92',
                                              style: TextStyle(fontSize: 18),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter your phone number';
                                    }
                                    if (!RegExp(r'^[1-9]\d{9}$').hasMatch(value)) {
                                      return 'Invalid phone number';
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
                        // SizedBox(height: 15),
                        // Padding(
                        //   padding: EdgeInsets.only(right: containerWidth * 0.80),
                        //   child: Text(
                        //     'Address',
                        //     style: TextStyle(fontSize: 17, color: Colors.black),
                        //   ),
                        // ),
                        // SizedBox(height: 5),
                        // Container(
                        //   height: containerHeight,
                        //   width: containerWidth,
                        //   decoration: BoxDecoration(
                        //     border: Border.all(
                        //       color: Color(0xFFA6A6A6),
                        //       width: 1.0,
                        //     ),
                        //     borderRadius: BorderRadius.circular(8.0),
                        //   ),
                        //   child: Padding(
                        //     padding: const EdgeInsets.all(8.0),
                        //     child: TextFormField(
                        //       controller: _addressController,
                        //       focusNode: _addressFocusNode,
                        //       style: TextStyle(
                        //           color: Colors.black), // Set text color to black
                        //       decoration: InputDecoration(
                        //         hintText: 'Your Address',
                        //         border: InputBorder.none,
                        //       ),
                        //       validator: (value) {
                        //         if (value == null || value.isEmpty) {
                        //           return 'Please enter your address';
                        //         }
                        //         return null;
                        //       },
                        //       textInputAction: TextInputAction.done,
                        //     ),
                        //   ),
                        // ),
                        SizedBox(height: 30),
                        Container(
                          height: buttonHeight,
                          width: buttonWidth,
                          child: ElevatedButton(
                            onPressed: () => submitSignup(context),
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all<Color>(
                                  AppColors.primaryTextColor),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                            child: Text(
                              'Sign Up',
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()),
                            );
                          },
                          child: Text(
                            'Already have an account? Log in',
                            style: TextStyle(
                              fontSize: 16,
                              color: AppColors.primaryTextColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
