import 'package:eataly/Login&SignupScreens/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'Phone_Otp_Verification.dart';
import 'Email_Otp_Verification.dart';
import '../../app_theme/app_theme.dart'; // Import your app theme
import '../Login&SignupScreens/signupscreen.dart'; // Import your SignUpScreen

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _inputController = TextEditingController();
  bool isEmail = true; // Set to true initially for email

  @override
  void initState() {
    super.initState();
    isEmail = true; // Set isEmail to true initially for email
  }

  Future<void> requestOTP(BuildContext context) async {
  const url = 'http://192.168.10.20:8000/otp-verification/request-otp';
  final input = isEmail ? _inputController.text : '+92' + _inputController.text;

  if (_formKey.currentState?.validate() ?? false) {
    final body = {
      'type': isEmail ? 'email' : 'phone',
      'target': input,
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
        print('OTP sent to $input');
        // Navigate to OTP verification screen
        if (isEmail) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EmailOtpVerification(email: input),
            ),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PhoneOtpVerification(phoneNumber: input),
            ),
          );
        }
      } else {
        print('Failed to send OTP: ${response.reasonPhrase}');
      }
    } catch (e) {
      print('An error occurred: $e');
    }
  }
}

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10), // Adjust this value to move the text down
            Text(
              'Forgot Password',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Enter Email Address or Phone Number',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  SizedBox(height: 20), // Spacing between text and phone number field
                  SizedBox(height: 5),
                  Container(
                    height: screenSize.height * 0.065,
                    width: screenSize.width * 0.85,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFA6A6A6),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          if (!isEmail)
                            SizedBox(
                              width: screenSize.width * 0.2,
                              child: Padding(
                                padding: EdgeInsets.only(right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset(
                                      'assets/images/pakistan_flag.png',
                                      width: screenSize.width * 0.09,
                                      height: screenSize.width * 0.09,
                                    ),
                                    Text(
                                      '+92',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          Expanded(
                            child: TextFormField(
                              controller: _inputController,
                              maxLength: isEmail ? null : 10,
                              keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.phone,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: isEmail ? 'Enter Your Email' : 'Enter Your Phone Number',
                                hintStyle: TextStyle(fontSize: 14), // Adjust the font size here
                                contentPadding: EdgeInsets.symmetric(vertical: 10), // Center the hint text vertically
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return isEmail ? 'Please enter your email' : 'Please enter your phone number';
                                }
                                return null;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  _buildToggleSwitch(),
                  SizedBox(height: 20), // Add spacing between the toggle switch and the TextButton
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      'Back to Sign In',
                      style: TextStyle(color: AppColors.accentColor, fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 25),
                  ElevatedButton(
                    onPressed: () {
                      requestOTP(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonColor, // Use your theme color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 90.0),
                      child: Text(
                        'Send',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 25), // Add spacing between the Send button and the "or" text
                  Text(
                    'OR',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 3), // Add spacing between the "or" text and the image row
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/faceebook.png',
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width: 5), // Adjust the spacing between the images
                        Image.asset(
                          'assets/images/gooogle.png',
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width: 5), // Adjust the spacing between the images
                        Image.asset(
                          'assets/images/apple.png',
                          width: 50,
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20), // Add spacing between the image row and the text
                  Text(
                    'Do you have an account?',
                    style: TextStyle(color: AppColors.accentColor, fontSize: 16),
                  ),
                  SizedBox(height: 20), // Add spacing between the text and the button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: AppColors.buttonColor),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Padding(
                     
padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 80.0),
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: AppColors.buttonColor,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildToggleSwitch() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Email',
          style: TextStyle(
            fontSize: 16,
            color: isEmail ? Colors.black : Colors.grey,
          ),
        ),
        SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            setState(() {
              isEmail = !isEmail;
              _inputController.clear();
            });
          },
          child: Container(
            width: 35,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: isEmail ? Colors.grey : AppColors.primaryTextColor,
            ),
            child: AnimatedAlign(
              duration: Duration(milliseconds: 200),
              alignment: isEmail ? Alignment.centerLeft : Alignment.centerRight,
              curve: Curves.easeInOut,
              child: Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 10),
        Text(
          'Phone Number',
          style: TextStyle(
            fontSize: 16,
            color: !isEmail ? Colors.black : Colors.grey,
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ForgotPasswordScreen(),
  ));
}
