import 'dart:convert';
import 'package:eataly/Profile/EditProfileScreen/verify_phone.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../API/api.dart';
import '../../app_theme/app_theme.dart';

class EditPhone extends StatefulWidget {
  const EditPhone({super.key});

  @override
  State<EditPhone> createState() => _EditPhoneState();
}

class _EditPhoneState extends State<EditPhone> {

  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _newPhoneController = TextEditingController();

  Future<void> changePhone() async {
    final Uri url = Uri.parse('$baseURL/otp-verification/change-phone');
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
    print( '+92' + _newPhoneController.text);
    final body = jsonEncode({'newPhoneNumber': '+92' + _newPhoneController.text});

    try {
      final response = await http.post(url, headers: headers, body: body);

      print(response.body);

      if (response.statusCode == 200) {
        print('OTP Sent to new Email');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VerifyPhone(),
          ),
        );
      } else {
        print('Failed to change Phone. Status code: ${response.statusCode}');
        print('Response body: ${response.body}');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to change Phone. Please try again.')),
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
    return prefs.getString('phoneNumber') ?? ''; // Default image if not found
  }

  Future<String?> getAccessToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('accessToken');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Phone'),
      ),
      body:  LayoutBuilder(
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
                      'Current Phone Number',
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ),
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
                      padding: EdgeInsets.all(8.0),
                      child: FutureBuilder<String>(
                        future: _getEmail(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            _phoneController.text = snapshot.data!;
                            return TextFormField(
                              controller: _phoneController,
                              style: TextStyle(color: Colors.grey),
                              decoration: InputDecoration(
                                enabled: false,
                                hintText: 'Your Phone Number',
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
                      'New Phone',
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xFFA6A6A6),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8), // Adjust horizontal padding
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 35, // Adjust width to accommodate prefix icon
                                  child: Image.asset(
                                    'assets/images/pakistan_flag.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                                SizedBox(width: 5.0,),
                                Text('+92',style: TextStyle(fontSize: 16),),
                                SizedBox(width: 5.0),
                                Expanded(
                                  child: Padding(
                                    padding:  EdgeInsets.all(4.0),
                                    child: TextFormField(
                                      maxLength: 10,
                                      controller: _newPhoneController,
                                      keyboardType: TextInputType.phone,
                                      textAlignVertical: TextAlignVertical.center,
                                      textAlign: TextAlign.start, // Align text to the start horizontally
                                      style: TextStyle(color: Colors.black, fontSize: 18),
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.only(left: 8), // Adjust left padding
                                        hintText: 'Enter Phone Number', // Add hintText to indicate the expected input
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your phone number';
                                        }
                                        if (!RegExp(r'^[1-9]\d{9}$').hasMatch(value)) {
                                          return 'Invalid phone number';
                                        }
                                        return null;
                                      },
                                      textInputAction: TextInputAction.next,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: paddingSize),
                  InkWell(
                    onTap: (){
                      changePhone();
                    },
                    child: Container(
                      width: containerWidth,
                      child: ElevatedButton(
                        onPressed: changePhone,
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
