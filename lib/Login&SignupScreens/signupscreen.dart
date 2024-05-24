import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../MyFunctions/Funtions.dart';
import 'loginscreen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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

  Future<void> submitSignup(BuildContext context) async {
    // API FOR MOBILE PERSONAL MOBILE BUT REMEMBER WIFI SHOULD BE SAME CHECK THROUGH cmd TYPE ipconfig add ip4 address
    final url = 'http://192.168.10.34:8000/auth/register';
    // API FOR EMULATOR DEVICES
    // final url = 'http://10.0.2.2:8000/auth/register';

    final body = {
      'username': _usernameController.text,
      'name': _nameController.text,
      'email': _emailController.text,
      'password': _passwordController.text,
      'phoneNumber': _phoneNumberController.text,
      'phoneNumberVerification':
          _phoneNumberVerificationController.text.toLowerCase() ==
              'true', // Bool value
      'email_verification': _emailVerificationController.text.toLowerCase() ==
          'true', // Bool Value
      'address': _addressController.text,
      'vendor': _vendorController.text.toLowerCase() == 'false', // Boll value
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
          MaterialPageRoute(builder: (context) => LoginScreen()),
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: false,
            ),
            TextField(
              controller: _phoneNumberController,
              decoration: InputDecoration(labelText: 'Phone Number'),
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: _phoneNumberVerificationController,
              decoration:
                  InputDecoration(labelText: 'Phone Number Verification'),
            ),
            TextField(
              controller: _emailVerificationController,
              decoration: InputDecoration(labelText: 'Email Verification'),
            ),
            TextField(
              controller: _addressController,
              decoration: InputDecoration(labelText: 'Address'),
            ),
            TextField(
              controller: _vendorController,
              decoration: InputDecoration(labelText: 'Vendor'),
            ),
            TextField(
              controller: _roleController,
              decoration: InputDecoration(labelText: 'Role'),
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
    );
  }

  @override
  void dispose() {
    // Dispose controllers to avoid memory leaks
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
    super.dispose();
  }
}
