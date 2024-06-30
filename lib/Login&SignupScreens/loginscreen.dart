import 'package:eataly/Login&SignupScreens/signupscreen.dart';
import 'package:eataly/components/bottomNavigatorBar.dart';
import 'package:eataly/PasswordResetScreens/forgot_password.dart'; // Import Forgot Password Screen
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../API/api.dart';
import '../Models/LoginModel.dart';
import '../MyFunctions/Funtions.dart';
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

  Future<void> _showLoadingDialog(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Dialog(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(),
                SizedBox(width: 10),
                Text("Please Wait"),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<int> login(BuildContext context) async {
    final login = '$baseURL/auth/login';

    if (_formKey.currentState?.validate() ?? false) {
      // Show loading dialog
      _showLoadingDialog(context);

      final body = {
        'username': _usernameController.text,
        'password': _passwordController.text,
      };

      try {
        final response = await http.post(
          Uri.parse(login),
          headers: {
            'Content-Type': 'application/json',
          },
          body: jsonEncode(body),
        );
        Navigator.of(context).pop(); // Close loading dialog

        if (response.statusCode == 200) {
          final loginResponse = LoginModel.fromJson(jsonDecode(response.body));
          // Save username, accessToken, and userId in shared preferences
          final prefs = await SharedPreferences.getInstance();
          await prefs.setString(
              'username', loginResponse.data!.user!.username.toString());
          await prefs.setInt(
              'userId', loginResponse.data!.user!.id!.toInt() ?? 0);
          await prefs.setString(
              'accessToken', loginResponse.data!.refreshToken.toString()); //  USING TEMP FIX FOR ACCESS TOKEN
          await prefs.setString(
              'name', loginResponse.data!.user!.name.toString());
          await prefs.setString(
              'email', loginResponse.data!.user!.email.toString());
          await prefs.setString(
              'phoneNumber', loginResponse.data!.user!.phoneNumber.toString());
          await prefs.setString('profileImage',
              loginResponse.data!.user!.profileImage.toString());
          await prefs.setBool('isLoggedIn', true); // Save isLoggedIn status

          print('Login successful');
          // My_Funtions.f_toast(context, 'Login successful', Colors.green);

          // Navigate to home page with fade transition
          Navigator.pushReplacement(
            context,
            FadePageRoute(
              page: BottomNavigationBarMenu(),
            ),
          );

          return loginResponse.data!.user!.id!.toInt() ?? 0;
        } else {
          My_Funtions.f_toast(context, 'Login failed', Colors.red);
          print('Login failed');
        }
      } catch (e) {
        Navigator.of(context).pop(); // Close loading dialog
        My_Funtions.f_toast(context, 'An error occurred', Colors.red);
      }
    }
    return 0;
  }

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          // THESE TERMS ARE USED TO RESPONSIVENESS OF CODE
          final containerHeight = constraints.maxHeight * 0.065;
          final containerWidth = constraints.maxWidth * 0.85;
          final imageHeight = constraints.maxHeight * 0.36;
          final imageWidth = constraints.maxWidth * 0.9;
          final buttonHeight = constraints.maxHeight * 0.07;
          final buttonWidth = constraints.maxWidth * 0.8;

          return SingleChildScrollView(
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
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Log In',
                            style: TextStyle(
                              fontSize: 25,
                              color: AppColors
                                  .primaryTextColor, // Using custom text color
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Username',
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 50,
                          width: containerWidth,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFA6A6A6), // Set the border color
                              width: 1.0, // Set the border width
                            ),
                            borderRadius: BorderRadius.circular(
                                8.0), // Optional: Add rounded corners
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: _usernameController,
                              focusNode: _usernameFocusNode,
                              style: TextStyle(
                                  color:
                                      Colors.black), // Set text color to black
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Your Phone Number/ Username',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your username';
                                }
                                return null;
                              },
                              textInputAction: TextInputAction.next,
                              onFieldSubmitted: (_) {
                                FocusScope.of(context)
                                    .requestFocus(_passwordFocusNode);
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Password',
                            style: TextStyle(fontSize: 17, color: Colors.black),
                          ),
                        ),
                        SizedBox(height: 5),
                        Container(
                          height: 50,
                          width: containerWidth,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFA6A6A6),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              controller: _passwordController,
                              focusNode: _passwordFocusNode,
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Your Password',
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscureText
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                ),
                              ),
                              obscureText: _obscureText,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your password';
                                }
                                return null;
                              },
                              textInputAction: TextInputAction.done,
                            ),
                          ),
                        ),
                        SizedBox(height: 7),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForgotPasswordScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Forget Password?',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.black),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            login(context);
                          },
                          child: Container(
                            height: 60,
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
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
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
                                style: TextStyle(
                                    fontSize: 17.0, color: Colors.black),
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Sign Up for the Accounts',
                                style: TextStyle(
                                    fontSize: 17.0,
                                    color: AppColors.primaryTextColor),
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
          );
        },
      ),
    );
  }
}

class FadePageRoute<T> extends PageRouteBuilder<T> {
  final Widget page;
  FadePageRoute({required this.page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
}
