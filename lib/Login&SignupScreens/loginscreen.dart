// ignore_for_file: use_build_context_synchronously

import 'package:eataly/Login&SignupScreens/signupscreen.dart';
import 'package:eataly/components/bottomNavigatorBar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _usernameFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  Future<void> login() async {
    const url = 'http://192.168.43.54:8000/auth/login';

    if (_formKey.currentState?.validate() ?? false) {
      final body = {
        'username': _usernameController.text,
        'password': _passwordController.text,
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
          // Handle successful login
          // print('Login successful');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text('Login successful'),
                backgroundColor: Colors.green),
          );
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>  BottomNavigationBarMenu()),
          );
        } else {
          // Handle login failure
          // print('Login failed');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text('Login failed'), backgroundColor: Colors.red),
          );
        }
      } catch (e) {
        // Handle exceptions
        // print('An error occurred: $e');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text('An error occurred'), backgroundColor: Colors.red),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10), // Set the desired radius
                child: Image.network(
                  'https://st2.depositphotos.com/3867453/7605/v/450/depositphotos_76055207-stock-illustration-letter-s-logo-icon-design.jpg',
                  height: 220,
                  width: 330,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
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
                          FocusScope.of(context).requestFocus(_passwordFocusNode);
                        },
                      ),
                      TextFormField(
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
                        textInputAction: TextInputAction.done,
                        onFieldSubmitted: (_) {
                          login();
                        },
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: login,
                        child: Text('Login'),
                      ),
                      SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignupScreen()),
                          );
                        },
                        child: Text(
                          'Create New Account',
                          style: TextStyle(fontSize: 17.0, color: Colors.purple),
                        ),
                      ),
                    ],
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
