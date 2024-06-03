import 'package:eataly/Login&SignupScreens/signupscreen.dart';
import 'package:eataly/components/bottomNavigatorBar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../Models/LoginModel.dart';
import '../Shared_Preferences/shared_preferences_page.dart';

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
    const url = 'http://10.0.2.2:8000/auth/login';

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
          final loginResponse = LoginModel.fromJson(jsonDecode(response.body));

          // Save username and accessToken in shared preferences
          SharedPreferencesPage sharedPreferences = SharedPreferencesPage();
          await sharedPreferences.saveUsername(_usernameController.text);
          await sharedPreferences
              .saveAccessToken(loginResponse.data?.accessToken ?? '');

          // Handle successful login
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text('Login successful'),
                backgroundColor: Colors.green),
          );
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BottomNavigationBarMenu()),
          );
        } else {
          // Handle login failure
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text('Login failed'), backgroundColor: Colors.red),
          );
        }
      } catch (e) {
        // Handle exceptions
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.only(bottom: 80.0),
            child: Container(
              height: 230.0,
              width: 390,
              child: Image.asset("assets/images/pattern.png"),
            ),
          ),
          Padding(
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
                  InkWell(
                    onTap: () {
                      login();
                    },
                    child: Container(
                      height: 45,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Center(
                          child: Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 19.0,
                            fontWeight: FontWeight.bold),
                      )),
                    ),
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
      ),
    );
  }
}
