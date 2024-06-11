import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../MyFunctions/Funtions.dart';
import '../app_theme/app_theme.dart'; // Importing the Data From Custom Directory
import 'Phone_Otp_Verification.dart'; // Importing Phone_Otp_Verification.dart

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  void dispose() {
    _phoneNumberController.dispose();
    super.dispose();
  }

  Future<void> requestOTP(BuildContext context) async {
    // Your API endpoint for sending OTP
    const url = 'http://192.168.10.10:8000/users/request-otp';

    // Constructing the phone number
    final phoneNumber = '+92' + _phoneNumberController.text;

    if (_formKey.currentState?.validate() ?? false) {
      final body = {
        'type': 'phone',
        'target': phoneNumber,
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
          print('OTP sent to $phoneNumber');
          My_Funtions.f_toast(context, 'OTP sent to $phoneNumber', Colors.green);
          // Navigate to OTP verification screen
          // You need to create PhoneOtpVerificationScreen for this navigation
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PhoneOtpVerification(phoneNumber: phoneNumber),
            ),
          );
        } else {
          My_Funtions.f_toast(context, 'Failed to send OTP', Colors.red);
          print('Failed to send OTP: ${response.reasonPhrase}');
        }
      } catch (e) {
        My_Funtions.f_toast(context, 'An error occurred: $e', Colors.red);
        print('An error occurred: $e');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Phone number label
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Phone Number',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
              SizedBox(height: 5),
              // Phone number field
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
                      SizedBox(
                        width: screenSize.width * 0.2, // Adjusted width
                        child: Padding(
                          padding: EdgeInsets.only(right: 10),
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
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextFormField(
                          controller: _phoneNumberController,
                          maxLength: 10,
                          keyboardType: TextInputType.phone,
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your phone number';
                            }
                            // You can add more validation logic here if needed
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {
                  requestOTP(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryTextColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
