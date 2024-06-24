import 'dart:async';
import 'dart:convert';
import 'package:eataly/API/api.dart';
import 'package:eataly/PartyScreens/AddFriendsScreen.dart';
import 'package:eataly/app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../Models/PartyMembersModel.dart';
import '../components/bottomNavigatorBar.dart';

class HostPartyScreen extends StatefulWidget {
  final String inviteCode;
  const HostPartyScreen(
      {required this.inviteCode, super.key});

  @override
  State<HostPartyScreen> createState() => _HostPartyScreenState();
}

class _HostPartyScreenState extends State<HostPartyScreen> {
  Future<void> _showDeleteDialogHost(BuildContext context) {
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
                Text(" Deleting Party..."),
              ],
            ),
          ),
        );
      },
    );
  }

  String? accessToken;

  @override
  void initState() {
    super.initState();
    _loadAccessToken();
    fetchPartyMembers();
  }

  Future<void> _loadAccessToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      accessToken = prefs.getString('accessToken');
    });
  }

  // DELETE API
  Future<void> deleteParty() async {
    _showDeleteDialogHost(context);
    final url = Uri.parse('$baseURL/parties/${widget.inviteCode}');

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    };

    final response = await http.delete(url, headers: headers);

    if (response.statusCode == 204) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => BottomNavigationBarMenu(),
        ),
      );
      Fluttertoast.showToast(
          msg: 'Party Deleted',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.SNACKBAR,
          backgroundColor: AppColors.buttonColor,
          textColor: Colors.white);
    } else {
      print(response.statusCode);
      print(response.body);
      Fluttertoast.showToast(
          msg: 'Failed to delete party',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.SNACKBAR,
          backgroundColor: Colors.red,
          textColor: Colors.white);
    }
  }


//PARTY-MEMBERS API
  Future<PartyMembersModel> fetchPartyMembers() async {
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    };

    final response = await http.get(Uri.parse('$baseURL/parties/${widget.inviteCode}'), headers: headers);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return PartyMembersModel.fromJson(data);
    } else {
      print('Error fetching party members: ${response.body}');
      throw Exception('Failed to load party members');
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Party',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Image.asset(
              'assets/images/notificationpurple.png',
              width: 30,
              height: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Delete Party"),
                      content: Text("Do you really want to delete this party?"),
                      actions: <Widget>[
                        OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(width: 1, color: Colors.redAccent),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                          child: Text(
                            "No",
                            style: TextStyle(color: Colors.redAccent),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            deleteParty(); // call your delete party function here
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.redAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                          child: Text(
                            "Confirm",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child:
                  Icon(Icons.delete_forever_outlined, color: Colors.redAccent),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Party Code:',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 4,
                ),
                Text(
                  widget.inviteCode,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryTextColor,
                      fontSize: 17),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            FutureBuilder<PartyMembersModel>(
              future: fetchPartyMembers(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    height: size.height * 0.120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.data?.partyMembers?.length,
                      itemBuilder: (context, index) {
                        final member = snapshot.data!.data!.partyMembers?[index];
                        return Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage(member!.profileImage),
                                  ),
                                  Text(member.username.toString()),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                }
                return CircularProgressIndicator();
              },
            ),
            const SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: EdgeInsets.only(right: size.width * 0.69),
              child: Text(
                'Host Controls',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryTextColor),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Party on the Host',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  Radio<String>(
                    value: 'on',
                    groupValue: 'on',
                    onChanged: (value) {
                      // Handle radio button selection
                    },
                    activeColor: AppColors.primaryTextColor,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Go Dutch',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  Radio<String>(
                    value: 'off',
                    groupValue: 'on',
                    onChanged: (value) {
                      // Handle radio button selection
                    },
                    activeColor: AppColors.primaryTextColor,
                  ),
                ],
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/Group.png',
                width: size.width * 0.95,
                height: size.height * 0.230,
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Container(
              height: 48,
              width: 306,
              decoration: BoxDecoration(
                  color: AppColors.primaryTextColor,
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text('Make a Booking',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildFriendAvatar(context, 'assets/images/you.png', 'You'),
                    SizedBox(
                      width: 15,
                    ),
                    _buildFriendAvatar(
                        context, 'assets/images/eddie.png', 'Eddie'),
                    SizedBox(
                      width: 15,
                    ),
                    _buildFriendAvatar(
                        context, 'assets/images/audrey.png', 'Audrey'),
                    SizedBox(
                      width: 15,
                    ),
                    _buildFriendAvatar(
                        context, 'assets/images/romanov.png', 'Romanov'),
                    SizedBox(
                      width: 15,
                    ),
                    _buildFriendAvatar(
                        context, 'assets/images/person4.png', 'Jack'),
                    SizedBox(
                      width: 15,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddFriendsPage(),
                          ),
                        );
                      },
                      child: ClipOval(
                        child: Container(
                          width: size.width * 0.15,
                          height: size.width * 0.15,
                          child: Image.asset(
                            'assets/images/Avatars.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.65),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _showBottomSheet(
                          context); // Show the bottom sheet when clicked
                    },
                    child: Row(
                      children: [
                        const Text(
                          'Lets Talk!',
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 8.0),
                        Container(
                          width: size.width * 0.12,
                          height: size.width * 0.12,
                          child: Image.asset(
                            'assets/images/chat.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFriendAvatar(
      BuildContext context, String imagePath, String name) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipOval(
              child: Container(
                width: size.width * 0.18,
                height: size.width * 0.18,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 4),
            Text(
              name,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        Positioned(
          top: 0,
          right: 0,
          child: Container(
            width: size.width * 0.06,
            height: size.width * 0.06,
            decoration: const BoxDecoration(
              color: Color(0xFF00B288),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }
}

// FUNCTION USED FOR BOTTOM SHEET
void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      final size = MediaQuery.of(context).size;

      return SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 90),
              child: Row(
                children: [
                  const Text(
                    '5 Friends Joined the Party',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(width: 50.0),
                  Icon(
                    Icons.arrow_drop_down,
                    color: AppColors.primaryTextColor,
                  ),
                ],
              ),
            ),
            const Center(child: Text('Naveed Joined')),
            const SizedBox(height: 0.0),
            _buildBottomSheetRow(context, 'assets/images/eddie.png', 'Eddie', [
              'Hey Everyone!',
              'Whats the Plan?',
              'Any updates?',
            ]),
            const SizedBox(height: 10),
          ],
        ),
      );
    },
  );
}

Widget _buildBottomSheetRow(BuildContext context, String imagePath, String name,
    List<String> messages) {
  final size = MediaQuery.of(context).size;

  return Column(
    children: [
      Row(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ClipOval(
              child: Container(
                width: size.width * 0.13,
                height: size.width * 0.13,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
              for (String message in messages)
                Text(
                  message,
                  style: TextStyle(fontSize: 14),
                ),
            ],
          ),
        ],
      ),
      Padding(
        padding: EdgeInsets.only(left: 40),
        child: Row(
          children: [
            Container(
              width: 300,
              height: 70, // Increase the height as needed
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  // validator: (formValidate) {
                  //   if (formValidate.toString().isEmpty) {
                  //     return 'Please enter some text';
                  //   }
                  //   return null;
                  // },
                  // focusNode: foucusEmail,
                  // onFieldSubmitted: (_) {
                  //   FocusScope.of(context).requestFocus(focusPassword);
                  // },
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'Type Message Here',
                    hintStyle: TextStyle(color: Colors.black54, fontSize: 15.0),
                    fillColor: Colors.grey[200],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white12,
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 12.0,
                        horizontal: 10.0), // Adjust the padding as needed
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            ClipOval(
              child: Container(
                width: 60,
                height: 60,
                child: Image.asset(
                  'assets/images/you.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
