import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../app_theme/app_theme.dart';
import '../Profile.dart';

class VerifyEmailOTP extends StatefulWidget {
  const VerifyEmailOTP({super.key});

  @override
  State<VerifyEmailOTP> createState() => _VerifyEmailOTPState();
}

class _VerifyEmailOTPState extends State<VerifyEmailOTP> {
  final TextEditingController otpController1 = TextEditingController();
  final TextEditingController otpController2 = TextEditingController();
  final TextEditingController otpController3 = TextEditingController();
  final TextEditingController otpController4 = TextEditingController();

  final FocusNode otpFocusNode1 = FocusNode();
  final FocusNode otpFocusNode2 = FocusNode();
  final FocusNode otpFocusNode3 = FocusNode();
  final FocusNode otpFocusNode4 = FocusNode();

  Timer? _timer;
  int _start = 60;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // sendOtp(context);
    });
    startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    otpController1.dispose();
    otpController2.dispose();
    otpController3.dispose();
    otpController4.dispose();
    otpFocusNode1.dispose();
    otpFocusNode2.dispose();
    otpFocusNode3.dispose();
    otpFocusNode4.dispose();
    super.dispose();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  Future<void> verifyOtp() async {
    final otp = otpController1.text +
        otpController2.text +
        otpController3.text +
        otpController4.text;
    final accessToken = await getAccessToken();
    const url = 'http://192.168.10.5:8000/users/verify-change-email';

    try {
      final body = jsonEncode({'otp': otp});
      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $accessToken',
        },
        body: body,
      );

      if (response.statusCode == 200) {
        print(otp);
        print('OTP verified successfully');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Profile(),
          ),
        );
      } else {
        print(otp);
        print('Failed to verify OTP');
      }
    } catch (e) {
      print('Failed to verify OTP: $e');
    }
  }

  Future<String?> getAccessToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('accessToken');
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final containerHeight = screenSize.height * 0.085;
    final containerWidth = screenSize.width * 0.18;
    final imageHeight = screenSize.height * 0.33;
    final imageWidth = screenSize.width * 1;
    final buttonHeight = screenSize.height * 0.07;
    final buttonWidth = screenSize.width * 0.8;
    final containerPadding = screenSize.height * 0.02;

    return Scaffold(
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
            Center(
                child: Text(
              'Email Verification',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 5.0,
            ),
            Text(
              'Enter Your Verification Code',
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              'OTP has been sent to your New Email',
              style: TextStyle(fontSize: 13.5),
            ),
            SizedBox(
              height: 35.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: containerHeight,
                    width: containerWidth,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        controller: otpController1,
                        focusNode: otpFocusNode1,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          counterText: '', // Hide the counter
                        ),
                        textInputAction: TextInputAction.next,
                        keyboardType:
                            TextInputType.number, // Only allow numbers
                        maxLength: 1, // Only allow a single digit
                        onChanged: (value) {
                          if (value.length == 1) {
                            otpFocusNode2.requestFocus();
                          }
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: containerHeight,
                    width: containerWidth,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        controller: otpController2,
                        focusNode: otpFocusNode2,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          counterText: '', // Hide the counter
                        ),
                        textInputAction: TextInputAction.next,
                        keyboardType:
                            TextInputType.number, // Only allow numbers
                        maxLength: 1, // Only allow a single digit
                        onChanged: (value) {
                          if (value.length == 1) {
                            otpFocusNode3.requestFocus();
                          } else if (value.isEmpty) {
                            otpFocusNode1.requestFocus();
                          }
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: containerHeight,
                    width: containerWidth,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        controller: otpController3,
                        focusNode: otpFocusNode3,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          counterText: '', // Hide the counter
                        ),
                        textInputAction: TextInputAction.next,
                        keyboardType:
                            TextInputType.number, // Only allow numbers
                        maxLength: 1, // Only allow a single digit
                        onChanged: (value) {
                          if (value.length == 1) {
                            otpFocusNode4.requestFocus();
                          } else if (value.isEmpty) {
                            otpFocusNode2.requestFocus();
                          }
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: containerHeight,
                    width: containerWidth,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        controller: otpController4,
                        focusNode: otpFocusNode4,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          counterText: '', // Hide the counter
                        ),
                        textInputAction: TextInputAction.done,
                        keyboardType:
                            TextInputType.number, // Only allow numbers
                        maxLength: 1, // Only allow a single digit
                        onChanged: (value) {
                          if (value.isEmpty) {
                            otpFocusNode3.requestFocus();
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn't receive a code.",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Resend",
                  style: TextStyle(
                      fontSize: 20,
                      color: AppColors.primaryTextColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 40),
            InkWell(
              onTap: () {
                verifyOtp();
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
                  'Verify',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 19.0,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
