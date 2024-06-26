import 'dart:convert';

import 'package:eataly/yourpartyscreen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../API/api.dart';
import '../Models/PartyMembersModel.dart';
import '../app_theme/app_theme.dart';
import '../components/bottomNavigatorBar.dart';

class JoineePartyScreen extends StatefulWidget {
  final String inviteCode;
  const JoineePartyScreen({required this.inviteCode, super.key});

  @override
  State<JoineePartyScreen> createState() => _JoineePartyScreenState();
}

class _JoineePartyScreenState extends State<JoineePartyScreen> {


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
                Text("Leaving Party..."),
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
  }

  Future<void> _loadAccessToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      accessToken = prefs.getString('accessToken');
    });
  }

  Future<void> leaveParty() async {
    _showLoadingDialog(context);
    final url = Uri.parse('$baseURL/parties/${widget.inviteCode}/toggle');

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    };

    final response = await http.patch(url, headers: headers);

    if (response.statusCode == 201) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => BottomNavigationBarMenu(),
        ),
      );
      Fluttertoast.showToast(
          msg: 'Party Leaved',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.SNACKBAR,
          backgroundColor: AppColors.buttonColor,
          textColor: Colors.white);
    } else if (response.statusCode == 404) {
      Fluttertoast.showToast(
          msg: 'Invalid code',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.SNACKBAR,
          backgroundColor: Colors.red,
          textColor: Colors.white);
    } else {
      print(response.statusCode);
      Fluttertoast.showToast(
          msg: 'Joined Failed Invalid Code',
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

    final response = await http.get(
        Uri.parse('$baseURL/parties/${widget.inviteCode}'),
        headers: headers);
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
        automaticallyImplyLeading: false,
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
            padding: EdgeInsets.only(right: 10.0),
            child: Image.asset(
              'assets/images/settingspurple.png',
              width: 30,
              height: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20),
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
            const SizedBox(
              height: 25.0,
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
                        final member =
                        snapshot.data!.data!.partyMembers?[index];
                        return Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                    NetworkImage(member!.profileImage),
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
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Container(
            //       child: Image.asset(
            //         'assets/images/Ellipsegreen.png',
            //         width: size.width * 0.08,
            //         height: size.height * 0.04,
            //       ),
            //     ),
            //     //  Text(
            //     //   'Naveed Joined',
            //     //   style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
            //     // ),
            //   ],
            // ),
            SizedBox(
              height: 75.0,
            ),
            // Padding(
            //   padding: EdgeInsets.only(right: size.width * 0.69),
            //   child: Text(
            //     'Host Controls',
            //     style: TextStyle(
            //         fontSize: 17,
            //         fontWeight: FontWeight.w600,
            //         color: AppColors.primaryTextColor),
            //   ),
            // ),
            // const SizedBox(
            //   height: 5.0,
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 15),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       const Text(
            //         'Party on the Host',
            //         style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            //       ),
            //       Radio<String>(
            //         value: 'on',
            //         groupValue: 'on',
            //         onChanged: (value) {
            //           // Handle radio button selection
            //         },
            //         activeColor: AppColors.primaryTextColor,
            //       ),
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 15),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       const Text(
            //         'Go Dutch',
            //         style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
            //       ),
            //       Radio<String>(
            //         value: 'off',
            //         groupValue: 'on',
            //         onChanged: (value) {
            //           // Handle radio button selection
            //         },
            //         activeColor: AppColors.primaryTextColor,
            //       ),
            //     ],
            //   ),
            // ),
            Container(
              child: Image.asset(
                'assets/images/Group.png',
                width: size.width * 0.8,
                height: size.height * 0.280,
              ),
            ),
            SizedBox(
              height: 35.0,
            ),
            InkWell(
              onTap:(){
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Leave Party"),
                      content: Text("Are you sure you want to leave the party?",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                      actions: <Widget>[
                        SizedBox(
                          height: 31,
                          width: 83,
                          child: OutlinedButton(
                            onPressed: () {
                              leaveParty();
                            },
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(width: 1, color: AppColors.alert),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                            child: Text("Leave", style: TextStyle(color: AppColors.alert),),
                          ),
                        ),
                        SizedBox(
                          height: 31,
                          width: 75,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.buttonColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                            child: Text("Stay", style: TextStyle(color: Colors.white),),
                          ),
                        )
                      ],
                    );
                  },
                );
              },
              child:Container(
                height: 44,
                width: 342,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: AppColors.alert, // Outline color
                    width: 1.0, // Outline width
                  ),
                ),
                child: Center(
                  child: Text(
                    "Leave Party",
                    style: TextStyle(
                      fontSize: 16,
                      color: AppColors.alert,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
             SizedBox(
              height: size.height * 0.15,
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.65),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      _showChatModalBottomSheet(context);
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

Future<String?> _loadUserImage() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('profileImage'); // Replace 'userImageUrl' with the actual key
}


void _showChatModalBottomSheet(BuildContext context) async {
  String? userImageUrl = await _loadUserImage(); // Load user image URL from SharedPreferences

  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(16.0),
              height: 95, // Adjust height as needed
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Add your chat UI components here
                  SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Enter your message',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 45,
              width: 45,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: userImageUrl != null
                    ? NetworkImage(userImageUrl)
                    : AssetImage('assets/images/you.png') as ImageProvider<Object>, // Fallback to a local image if no URL
              ),
            ),
          ],
        ),
      );
    },
  );
}


