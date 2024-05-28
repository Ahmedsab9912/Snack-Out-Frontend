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
    const url = 'http://192.168.100.113:8000/auth/register';

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
          // print('Signup successful');
          My_Funtions.f_toast(context, 'Registration successful', Colors.green);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        } else {
          // Handle signup failure
          My_Funtions.f_toast(context, 'Registration failed', Colors.red);
          // print('Signup failed');
        }
      } catch (e) {
        // Handle exceptions
        My_Funtions.f_toast(context, 'An error occurred', Colors.red);
        // print('An error occurred: $e');
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
                maxLength: 8,
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
                maxLength: 11,
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
