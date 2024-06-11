import 'dart:convert';
import 'package:eataly/Profile/EditProfileScreen/verify_email.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../../app_theme/app_theme.dart';

class EditEmail extends StatefulWidget {
  const EditEmail({super.key});

  @override
  State<EditEmail> createState() => _EditEmailState();
}

class _EditEmailState extends State<EditEmail> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _newEmailController = TextEditingController();

  Future<void> changeEmail() async {
    final Uri url = Uri.parse('http://192.168.10.5:8000/users/change-email');
    final String? accessToken = await getAccessToken();

    print(await getAccessToken());

    if (accessToken == null) {
      print('Access token is missing');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Access token is missing. Please try again.')),
      );
      return;
    }

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    };
    final body = jsonEncode({'newEmail': _newEmailController.text});

    try {
      final response = await http.post(url, headers: headers, body: body);

      print(response.body);

      if (response.statusCode == 200) {
        print('OTP Sent to new Email');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VerifyEmailOTP(),
          ),
        );
      } else {
        print('Failed to change email. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to change email. Please try again.')),
        );
      }
    } catch (error) {
      print('Error occurred: $error');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An error occurred. Please try again.')),
      );
    }
  }

  Future<String> _getEmail() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('email') ?? ''; // Default image if not found
  }

  Future<String?> getAccessToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('accessToken');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Email'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final containerHeight = constraints.maxHeight * 0.065;
          final containerWidth = constraints.maxWidth * 0.85;
          double paddingSize = constraints.maxWidth * 0.05;
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(paddingSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: paddingSize),
                  Padding(
                    padding: EdgeInsets.only(bottom: paddingSize),
                    child: Text(
                      'Current Email',
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ),
                  Container(
                    height: containerHeight,
                    width: containerWidth,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFA6A6A6),
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FutureBuilder<String>(
                        future: _getEmail(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            _emailController.text = snapshot.data!;
                            return TextFormField(
                              controller: _emailController,
                              style: TextStyle(color: Colors.grey),
                              decoration: InputDecoration(
                                enabled: false,
                                hintText: 'Your Email',
                                border: InputBorder.none,
                              ),
                            );
                          } else {
                            return Center(child: CircularProgressIndicator());
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: paddingSize),
                  Padding(
                    padding: EdgeInsets.only(bottom: paddingSize),
                    child: Text(
                      'New Email',
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ),
                  Container(
                    height: containerHeight,
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
                        keyboardType: TextInputType.emailAddress,
                        controller: _newEmailController,
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Your New Email',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: paddingSize),
                  InkWell(
                    onTap: (){
                      changeEmail();
                    },
                    child: Container(
                      width: containerWidth,
                      child: ElevatedButton(
                        onPressed: changeEmail,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              AppColors.primaryTextColor),
                          shape: MaterialStateProperty.all<
                              RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        child: Text(
                          'Confirm',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
