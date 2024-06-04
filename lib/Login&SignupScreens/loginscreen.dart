import 'package:eataly/Login&SignupScreens/signupscreen.dart';
import 'package:eataly/components/bottomNavigatorBar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../Models/LoginModel.dart';
import '../Shared_Preferences/shared_preferences_page.dart';
import '../app_theme/app_theme.dart'; // Importing the Data From Custom Directory

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
    // const url = 'http://10.0.2.2:8000/auth/login';
    const url = 'http://192.168.10.25:8000/auth/login';

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

          // Save username, accessToken, and userId in shared preferences
          SharedPreferencesPage sharedPreferences = SharedPreferencesPage();
          await sharedPreferences.saveUsername(_usernameController.text);
          await sharedPreferences.saveAccessToken(loginResponse.data?.accessToken ?? '');

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
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width * 0.95; // 95% of screen width
    final height = screenSize.height * 0.95; // 95% of screen height


    // Define sizes relative to the screen size
    final containerHeight = screenSize.height * 0.065;
    final containerWidth = screenSize.width * 0.85;
    final imageHeight = screenSize.height * 0.36;
    final imageWidth = screenSize.width * 0.9;
    final buttonHeight = screenSize.height * 0.07;
    final buttonWidth = screenSize.width * 0.8;
    final containerPadding = screenSize.height * 0.02;



    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 55.0),
              child: Container(
                height: imageHeight,
                width: imageWidth,
                child: Image.asset("assets/images/pattern.png"),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 320),
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: 25,
                          color: AppColors.primaryTextColor, // Using custom text color
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding:  EdgeInsets.only(right: 320),
                      child: Text('Username',style: TextStyle(fontSize: 17,color: Colors.black),),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      height: containerHeight,
                      width: containerWidth,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFA6A6A6), // Set the border color
                          width: 1.0, // Set the border width
                        ),
                        borderRadius: BorderRadius.circular(8.0), // Optional: Add rounded corners
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _usernameController,
                          focusNode: _usernameFocusNode,
                          style: TextStyle(color: Colors.black), // Set text color to black
                          decoration: InputDecoration(border: InputBorder.none,hintText: 'Your Phone Number/ Username'),
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
                      ),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding:  EdgeInsets.only(right: 320),
                      child: Text('Password',style: TextStyle(fontSize: 17,color: Colors.black),),
                    ),
                    SizedBox(height: 5,),
                    Container(
                      height: containerHeight,
                      width: containerWidth,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFA6A6A6), // Set the border color
                          width: 1.0, // Set the border width
                        ),
                        borderRadius: BorderRadius.circular(8.0), // Optional: Add rounded corners
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _passwordController,
                          focusNode: _passwordFocusNode,
                          style: TextStyle(color: Colors.black), // Set text color to black
                          decoration: InputDecoration(border: InputBorder.none,hintText: 'Your Password'),
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
                      ),
                    ),
                    SizedBox(height: 4,),
                    Padding(
                      padding:  EdgeInsets.only(left: 250),
                      child: Text('Forget Password?',style: TextStyle(fontSize: 17,color: Colors.black),),
                    ),
                    SizedBox(height: 5,),
                    SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        login();
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
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 19.0,
                              fontWeight: FontWeight.bold),
                        )),
                      ),
                    ),
                    SizedBox(height: 15),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupScreen()),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'First time here?',
                            style: TextStyle(fontSize: 17.0, color: Colors.black),
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Sign Up for the Accounts',
                            style: TextStyle(fontSize: 17.0, color : AppColors.primaryTextColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
