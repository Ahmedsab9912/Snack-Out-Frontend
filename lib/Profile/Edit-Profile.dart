import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../app_theme/app_theme.dart';
import 'EditProfileScreen/edit_email.dart';
import 'EditProfileScreen/edit_phone.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  final FocusNode _usernameFocusNode = FocusNode();
  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _phoneNumberFocusNode = FocusNode();

  File? _imageFile;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final containerHeight = mediaQuery.size.height * 0.065;
    final containerWidth = mediaQuery.size.width * 0.85;
    final avatarSize = mediaQuery.size.width * 0.3;
    final paddingSize = mediaQuery.size.width * 0.03;

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: paddingSize),
              child: Center(
                child: Container(
                  height: avatarSize,
                  width: avatarSize,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: FutureBuilder<String>(
                    future: _getProfileImage(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return CircleAvatar(
                          radius: avatarSize / 3,
                          backgroundColor: Colors.purple,
                          child: CircleAvatar(
                            radius: avatarSize / 2 - 2,
                            backgroundImage: AssetImage('assets/images/default_avatar.png'),
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return CircleAvatar(
                          radius: avatarSize / 2,
                          backgroundColor: Colors.purple,
                          child: CircleAvatar(
                            radius: avatarSize / 2 - 2,
                            backgroundImage: AssetImage('assets/images/error_avatar.png'),
                          ),
                        );
                      } else {
                        return CircleAvatar(
                          radius: avatarSize / 2,
                          backgroundColor: Colors.purple,
                          child: CircleAvatar(
                            radius: avatarSize / 2 - 2,
                            backgroundImage: _imageFile != null
                                ? FileImage(_imageFile!)
                                : snapshot.data!.startsWith('http')
                                ? NetworkImage(snapshot.data!)
                                : AssetImage(snapshot.data!) as ImageProvider,
                          ),
                        );
                      }
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: paddingSize),
            TextButton(
              onPressed: () => _showEditPictureBottomSheet(context),
              child: Text(
                'Edit Picture',
                style: TextStyle(
                  color: Colors.purple,
                  fontSize: mediaQuery.size.width * 0.05,
                ),
              ),
            ),
            SizedBox(height: paddingSize / 2),
            Padding(
              padding: EdgeInsets.only(right: containerWidth * 0.80),
              child: Text(
                'Username',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
            SizedBox(height: 8),
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
                  future: _getUsername(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      _usernameController.text = snapshot.data!;
                      return TextFormField(
                        controller: _usernameController,
                        style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                        enabled: false,
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_nameFocusNode);
                        },
                      );
                    } else {
                      return Text(''); // Show a loading indicator while waiting for the data
                    }
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: containerWidth * 0.90),
              child: Text(
                'Name',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
            SizedBox(height: 8),
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
                  future: _getname(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      _nameController.text = snapshot.data!;
                      return TextFormField(
                        controller: _nameController,
                        style: TextStyle(color: Colors.grey),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (_) {
                          FocusScope.of(context).requestFocus(_emailFocusNode);
                        },
                      );
                    } else {
                      return Text(''); // Show a loading indicator while waiting for the data
                    }
                  },
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.only(right: containerWidth * 0.90),
              child: Text(
                'Email',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
            SizedBox(height: 8),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditEmail(),
                  ),
                );
              },
              child: Container(
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
                    future: _getemail(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        _emailController.text = snapshot.data!;
                        return TextFormField(
                          controller: _emailController,
                          focusNode: _emailFocusNode,
                          style: TextStyle(color: Colors.grey),
                          decoration: InputDecoration(
                            enabled: false,
                            border: InputBorder.none,
                            suffixIcon: Image.asset(
                              'assets/images/edit.png',
                              width: 50,
                              height: 70,
                            ),
                          ),
                          textInputAction: TextInputAction.next,
                          onFieldSubmitted: (_) {
                            FocusScope.of(context).requestFocus(_emailFocusNode);
                          },
                        );
                      } else {
                        return Text(''); // Show a loading indicator while waiting for the data
                      }
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: EdgeInsets.only(right: containerWidth * 0.68),
              child: Text(
                'Phone Number',
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
            ),
            SizedBox(height: 5),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditPhone(),
                  ),
                );
              },
              child: Container(
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
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(
                        child: FutureBuilder<String>(
                          future: _getphone(), // Note the correct method name
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              _phoneNumberController.text = snapshot.data!;
                              return TextFormField(
                                enabled: false,
                                controller: _phoneNumberController,
                                focusNode: _phoneNumberFocusNode,
                                keyboardType: TextInputType.phone,
                                style: TextStyle(color: Colors.grey),
                                decoration: InputDecoration(
                                  suffixIcon: Image.asset(
                                    'assets/images/edit.png',
                                    width: 50,
                                    height: 70,
                                  ),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.only(left: 5, bottom: 3),
                                ),
                              );
                            } else {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: containerHeight,
              width: containerWidth,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(AppColors.primaryTextColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
                child: Text(
                  'Save',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool _obscureText = true;

  Future<String> _getProfileImage() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('profileImage') ?? ''; // Default image if not found
  }

  Future<String> _getUsername() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('username') ?? ''; // Default image if not found
  }

  Future<String> _getname() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('name') ?? ''; // Default image if not found
  }

  Future<String> _getemail() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('email') ?? ''; // Default image if not found
  }

  Future<String> _getphone() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('phoneNumber') ?? ''; // Default image if not found
  }

  void _showEditPictureBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
              color: Color(0xFFA796E4),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          height: 155,
          child: Padding(
            padding: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                ListTile(
                  leading: Image.asset('assets/images/gallery.png', width: 30, height: 30),
                  title: Text('Choose from Gallery', style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.pop(context);
                    _pickImage(ImageSource.gallery);
                  },
                ),
                ListTile(
                  leading: Image.asset('assets/images/camera.png', width: 30, height: 30),
                  title: Text('Take Picture', style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.pop(context);
                    _pickImage(ImageSource.camera);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }
}
