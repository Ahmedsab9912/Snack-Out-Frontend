import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../app_theme/app_theme.dart';

class NewPasswordScreen extends StatefulWidget {
  final String otp;

  const NewPasswordScreen({Key? key, required this.otp}) : super(key: key);

  @override
  _NewPasswordScreenState createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  Future<void> saveNewPassword(BuildContext context) async {
    final newPassword = passwordController.text;
    final url = '192.168.10.10:8000/users/change-password';

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'otp': widget.otp,
          'newPassword': newPassword,
        }),
      );

      if (response.statusCode == 200) {
        // Password reset successful, handle navigation or other actions
        print('Password reset successfully');
        Navigator.pop(context);
      } else {
        print('Failed to reset password');
      }
    } catch (e) {
      print('Failed to reset password: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final buttonHeight = screenSize.height * 0.07;
    final buttonWidth = screenSize.width * 0.8;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: screenSize.height * 0.3,
              width: screenSize.width,
              child: Image.asset("assets/images/pattern.png"),
            ),
            Center(
              child: Text(
                'Reset Password',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 5.0),
            Text('Enter your new password', style: TextStyle(fontSize: 22)),
            SizedBox(height: 35.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 35.0),
              child: TextFormField(
                controller: passwordController,
                obscureText: !isPasswordVisible,
                style: TextStyle(color: Colors.black, fontSize: 20),
                decoration: InputDecoration(
                  labelText: 'New Password',
                  labelStyle: TextStyle(color: Colors.black, fontSize: 16),
                  border: OutlineInputBorder(),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            InkWell(
              onTap: () {
                saveNewPassword(context);
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
                    'Save Password',
                    style: TextStyle(color: Colors.white, fontSize: 19.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
