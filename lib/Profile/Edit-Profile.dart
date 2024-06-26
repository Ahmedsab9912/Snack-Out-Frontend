import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'dart:convert';

import '../API/api.dart';
import '../components/bottomNavigatorBar.dart';
import 'EditProfileScreen/edit_email.dart';
import 'EditProfileScreen/edit_phone.dart';
import '../models/users_model.dart';


class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  final FocusNode _nameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _phoneNumberFocusNode = FocusNode();

  File? _imageFile;
  final picker = ImagePicker();
  UsersModel? _userData;

  @override
  void initState() {
    super.initState();
    _fetchUserData();
  }

  Future<void> _fetchUserData() async {
    final prefs = await SharedPreferences.getInstance();
    final String? accessToken = prefs.getString('accessToken');

    if (accessToken == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Access token is missing")),
      );
      return;
    }

    final url = Uri.parse("$baseURL/users/me");
    final response = await http.get(url, headers: {
      'Authorization': 'Bearer $accessToken',
    });

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        _userData = UsersModel.fromJson(data);
        _usernameController.text = _userData!.username!;
        _nameController.text = _userData!.username!;
        _emailController.text = _userData!.email!;
        _phoneNumberController.text = _userData!.phoneNumber!;
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Failed to fetch user data")),
      );
    }
  }

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
                  child: CircleAvatar(
                    radius: avatarSize / 2,
                    backgroundColor: Colors.purple,
                    child: CircleAvatar(
                      radius: avatarSize / 2 - 2,
                      backgroundImage: _imageFile != null
                          ? FileImage(_imageFile!)
                          : _userData?.profileImage != null &&
                                  _userData!.profileImage!.startsWith('http')
                              ? NetworkImage(_userData!.profileImage!)
                              : AssetImage('assets/images/default.png')
                                  as ImageProvider,
                    ),
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
            _buildProfileField("Username", _usernameController, containerWidth,
                containerHeight, _nameFocusNode, false),
            _buildProfileField("Name", _nameController, containerWidth,
                containerHeight, _emailFocusNode, false),
            _buildProfileField("Email", _emailController, containerWidth,
                containerHeight, _phoneNumberFocusNode, true,
                navigateTo: EditEmail()),
            _buildProfileField("Phone Number", _phoneNumberController,
                containerWidth, containerHeight, null, true,
                navigateTo: EditPhone()),
            SizedBox(height: 30),
            Container(
              height: containerHeight,
              width: containerWidth,
              child: ElevatedButton(
                onPressed: () {
                  _uploadProfileImage();
                },
                style: ButtonStyle(
                  backgroundColor:
                      WidgetStateProperty.all<Color>(Colors.purple),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
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

  Widget _buildProfileField(
      String label,
      TextEditingController controller,
      double containerWidth,
      double containerHeight,
      FocusNode? nextFocusNode,
      bool isNavigable,
      {Widget? navigateTo}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
              right: containerWidth * (1 - (label.length * 0.05))),
          child: Text(
            label,
            style: TextStyle(fontSize: 17, color: Colors.black),
          ),
        ),
        SizedBox(height: 8),
        InkWell(
          onTap: isNavigable && navigateTo != null
              ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => navigateTo,
                    ),
                  );
                }
              : null,
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
              child: TextFormField(
                controller: controller,
                style: TextStyle(color: Colors.grey),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: isNavigable
                      ? Image.asset(
                          'assets/images/edit.png',
                          width: 50,
                          height: 70,
                        )
                      : null,
                ),
                enabled: !isNavigable,
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  if (nextFocusNode != null) {
                    FocusScope.of(context).requestFocus(nextFocusNode);
                  }
                },
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
      ],
    );
  }

  void _showEditPictureBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          decoration: BoxDecoration(
              color: Color(0xFFA796E4),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))),
          height: 155,
          child: Padding(
            padding: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                ListTile(
                  leading: Image.asset('assets/images/gallery.png',
                      width: 30, height: 30),
                  title: Text('Choose from Gallery',
                      style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.pop(context);
                    _pickImage(ImageSource.gallery);
                  },
                ),
                ListTile(
                  leading: Image.asset('assets/images/camera.png',
                      width: 30, height: 30),
                  title: Text('Take Picture',
                      style: TextStyle(color: Colors.white)),
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

  Future<void> _uploadProfileImage() async {
    final prefs = await SharedPreferences.getInstance();
    final String? accessToken = prefs.getString('accessToken');

    if (accessToken == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Access token is missing")),
      );
      return;
    }

    if (_imageFile == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Image file is missing")),
      );
      return;
    }

    final url = Uri.parse("$baseURL/users/change-profile-picture");
    final request = http.MultipartRequest('POST', url)
      ..headers['Authorization'] = 'Bearer $accessToken';

    final mimeType = _getMimeType(_imageFile!.path);
    request.files.add(await http.MultipartFile.fromPath(
      'image',
      _imageFile!.path,
      contentType: MediaType(mimeType[0], mimeType[1]),
    ));

    try {
      final response = await request.send();
      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Upload successful')),
        );
        // Navigate to OTP page
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BottomNavigationBarMenu(),
          ),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Upload failed')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Upload failed: $e')),
      );
    }
  }

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  List<String> _getMimeType(String filePath) {
    final extension = filePath.split('.').last;
    switch (extension) {
      case 'jpg':
      case 'jpeg':
        return ['image', 'jpeg'];
      case 'png':
        return ['image', 'png'];
      case 'gif':
        return ['image', 'gif'];
      default:
        return ['application', 'octet-stream'];
    }
  }
}
