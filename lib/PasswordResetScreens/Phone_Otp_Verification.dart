import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Shared_Preferences/shared_preferences_page.dart';
import '../app_theme/app_theme.dart';
import 'New_Password.dart';

class PhoneOtpVerification extends StatefulWidget {
  final String phoneNumber;

  const PhoneOtpVerification({Key? key, required this.phoneNumber}) : super(key: key);

  @override
  State<PhoneOtpVerification> createState() => _OTP_Screen_PhoneState();
}

class _OTP_Screen_PhoneState extends State<PhoneOtpVerification> {
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
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      sendOtp(context);
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

  // sendOtp function
  Future<void> sendOtp(BuildContext context) async {
    final SharedPreferencesPage sharedPreferences = SharedPreferencesPage();
    final int userId = await sharedPreferences.getUserId() ?? 0;

    final url = 'http://192.168.10.7/otp-verification/phone?userId=$userId';

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 201) {
        print('OTP sent successfully');
      } else {
        print('Failed to send OTP');
      }
    } catch (e) {
      print('Failed to send OTP: $e');
    }
  }

  // PATCH API for OTP verification
  Future<void> verifyOtp() async {
    final SharedPreferencesPage sharedPreferences = SharedPreferencesPage();
    final int userId = await sharedPreferences.getUserId() ?? 0;
    final otp = otpController1.text + otpController2.text + otpController3.text + otpController4.text;
    final url = 'http://192.168.10.7:8000/users/verify-otp';

    try {
      final response = await http.patch(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'otp': otp,
        }),
      );

      if (response.statusCode == 201) {
        // OTP verification successful, navigate to NewPasswordScreen
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewPasswordScreen(otp: otp),
          ),
        );
        print(otp);
        print('OTP verified successfully');
      } else {
        print(otp);
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Widgets for OTP input
            // Add your UI widgets here
          ],
        ),
      ),
    );
  }
}
