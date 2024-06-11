import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'New_Password.dart';

class PhoneOtpVerification extends StatefulWidget {
  final String phoneNumber;

  const PhoneOtpVerification({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  State<PhoneOtpVerification> createState() => _PhoneOtpVerificationState();
}

class _PhoneOtpVerificationState extends State<PhoneOtpVerification> {
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

  Future<void> verifyOtp(BuildContext context) async {
    final otp = otpController1.text + otpController2.text + otpController3.text + otpController4.text;
    final url = 'http://192.168.10.20:8000/otp-verification/verify-otp';

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'otp': otp,
        }),
      );

      if (response.statusCode == 200) {
        // OTP verification successful, navigate to NewPasswordScreen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewPasswordScreen(otp: otp),
          ),
        );
        print('OTP verified successfully');
      } else {
        print('Failed to verify OTP');
      }
    } catch (e) {
      print('Failed to verify OTP: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final containerHeight = screenSize.height * 0.085;
    final containerWidth = screenSize.width * 0.18;

    return Scaffold(
      appBar: AppBar(
        title: Text('OTP Verification'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Enter the OTP sent to ${widget.phoneNumber}',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _otpTextField(otpController1, otpFocusNode1, otpFocusNode2),
                _otpTextField(otpController2, otpFocusNode2, otpFocusNode3),
                _otpTextField(otpController3, otpFocusNode3, otpFocusNode4),
                _otpTextField(otpController4, otpFocusNode4, null),
              ],
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                verifyOtp(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Adjust this to your theme color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
                child: Text(
                  'Verify',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Resend OTP in $_start seconds',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget _otpTextField(TextEditingController controller, FocusNode focusNode, FocusNode? nextFocusNode) {
    return SizedBox(
      width: 50,
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        onChanged: (value) {
          if (value.length == 1 && nextFocusNode != null) {
            nextFocusNode.requestFocus();
          }
        },
        decoration: InputDecoration(
          counterText: '',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
