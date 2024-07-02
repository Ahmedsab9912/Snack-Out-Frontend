import 'dart:convert';

import 'package:eataly/app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../API/api.dart';
import '../Models/PartyMembersModel.dart';
import '../components/bottomNavigatorBar.dart';
import 'ActivePartyFriends.dart';

class HostPartyfriendspage extends StatefulWidget {
  final String inviteCode;

  HostPartyfriendspage({required this.inviteCode, Key? key}) : super(key: key);

  @override
  State<HostPartyfriendspage> createState() => _HostPartyfriendspageState();
}

class _HostPartyfriendspageState extends State<HostPartyfriendspage> {
  String? accessToken;

  @override
  void initState() {
    super.initState();
    _loadAccessToken();
    fetchPartyMembers();
    fetchFriends();
  }

  // SHOW DELETE DIALOG
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

  Future<void> _loadAccessToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      accessToken = prefs.getString('accessToken');
    });
  }

  //PARTY-MEMBERS API
  Future<PartyMembersModel> fetchPartyMembers() async {
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    };

    try {
      final response = await http.get(
          Uri.parse('$baseURL/parties/${widget.inviteCode}'),
          headers: headers);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        return PartyMembersModel.fromJson(data);
      } else {
        throw Exception('Failed to load party members');
      }
    } catch (e) {
      throw Exception('An error occurred: $e');
    }
  }

//FRIENDS API
  Future<List<ActivePartyFriends>> fetchFriends() async {
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    };

    try {
      final response = await http.get(
        Uri.parse('$baseURL/users/friends'),
        headers: headers,
      );

      if (response.statusCode == 200) {
        final List<dynamic> responseData = jsonDecode(response.body);
        return responseData
            .map((data) => ActivePartyFriends.fromJson(data))
            .toList();
      } else if (response.statusCode == 401) {
        throw Exception('The provided token is invalid.');
      } else {
        throw Exception('Failed to load friends');
      }
    } catch (e) {
      throw Exception('An error occurred: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Friends",
          style: const TextStyle(
            fontFamily: "Lato",
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: Color(0xff222222),
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 24,
              ),
              child: Container(
                width: screensize.width * 0.87,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  border: Border.all(color: Colors.grey, width: 1.0),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: TextFormField(
                    // controller: searchController,
                    decoration: InputDecoration(
                      hintText: 'Search By Name.',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.only(left: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Party Members",
                    style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryTextColor,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            FutureBuilder<PartyMembersModel>(
              future: fetchPartyMembers(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey, width: 1.0),
                          ),
                          width: screensize.width,
                          height: 64,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 12),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(snapshot
                                        .data!.data!.partyMembers!
                                        .firstWhere((element) =>
                                            element.id ==
                                            snapshot.data!.data!.hostId)
                                        .profileImage
                                        .toString()),
                                  ),
                                ),
                              ),
                              SizedBox(width: 16),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    snapshot.data!.data!.partyMembers!
                                        .firstWhere((element) =>
                                            element.id ==
                                            snapshot.data!.data!.hostId)
                                        .username
                                        .toString(),
                                    style: TextStyle(
                                      fontFamily: "Lato",
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff222222),
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        'assets/svgIcons/online.svg',
                                        width: 12,
                                        height: 12,
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 4.0),
                                        child: Text("Admin"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Expanded(
                                child: SizedBox(),
                              ),
                              InkWell(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text("Delete Party"),
                                        content: Text(
                                            "Do you really want to delete this party?"),
                                        actions: <Widget>[
                                          OutlinedButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            style: OutlinedButton.styleFrom(
                                              side: BorderSide(
                                                  width: 1,
                                                  color: Colors.redAccent),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                              ),
                                            ),
                                            child: Text(
                                              "No",
                                              style: TextStyle(
                                                  color: Colors.redAccent),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              deleteParty(); // call your delete party function here
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.redAccent,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(18.0),
                                              ),
                                            ),
                                            child: Text(
                                              "Confirm",
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(right: 12),
                                  child: Container(
                                    height: 39,
                                    width: 96,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                          color: AppColors.alert, width: 1),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "End Party",
                                        style: TextStyle(
                                            fontFamily: "Lato",
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            color: AppColors.alert),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      ...snapshot.data!.data!.partyMembers!.map((member) {
                        if (member.id != snapshot.data!.data!.hostId) {
                          return Padding(
                            padding: EdgeInsets.symmetric(horizontal: 24),
                            child: Container(
                              margin: EdgeInsets.only(top: 5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: Colors.grey, width: 1.0),
                              ),
                              width: screensize.width,
                              height: 64,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12),
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      child: CircleAvatar(
                                        backgroundImage: NetworkImage(
                                            member.profileImage.toString()),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 12),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        member.username.toString(),
                                        style: TextStyle(
                                          fontFamily: "Lato",
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff222222),
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Row(
                                        children: [
                                          SvgPicture.asset(
                                            'assets/svgIcons/online.svg',
                                            width: 12,
                                            height: 12,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 4.0),
                                            child: Text("In Party"),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: SizedBox(),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 15.0),
                                    child: SvgPicture.asset(
                                      'assets/svgIcons/minus1.svg',
                                      width: 30,
                                      height: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        } else {
                          return Container();
                        }
                      }).toList(),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Text('${snapshot.error}');
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 28),
                  child: Text(
                    "My Friends",
                    style: TextStyle(
                      fontFamily: "Lato",
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.primaryTextColor,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            // Displaying friends
            FutureBuilder<List<ActivePartyFriends>>(
              future: fetchFriends(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: snapshot.data!.map((friend) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Container(
                          margin: EdgeInsets.only(top: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Colors.grey, width: 1.0),
                          ),
                          width: screensize.width,
                          height: 64,
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 12),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              friend.profileImage!),
                                        ),
                                      ),
                                      SizedBox(width: 12),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            friend.username!,
                                            style: TextStyle(
                                              fontFamily: "Lato",
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                              color: Color(0xff222222),
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                          Text('Friend'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 15.0),
                                child: SvgPicture.asset(
                                  'assets/svgIcons/plus.svg',
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
            SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 220),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Image.asset(
                                    'assets/images/Cross.png',
                                    width: 45,
                                    height: 45,
                                  ),
                                ),
                              ),
                              Text(
                                "Send this link to your Friends and\n Family to Add them in the Party ",
                                style: TextStyle(
                                  fontFamily: "Lato",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff333333),
                                  height: 30 / 24,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              SizedBox(
                                width: 294,
                                height: 40,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(8, 7, 8, 7),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                      color: AppColors.buttonColor,
                                      width: 1.5,
                                    ),
                                    color: AppColors.buttonTextColor,
                                  ),
                                  child: Center(
                                    child: TextFormField(
                                      enabled: false,
                                      initialValue: widget
                                          .inviteCode, // Sets the initial value to inviteCode
                                      keyboardType: TextInputType.text,
                                      maxLength:
                                          8, // Still enforces the maxLength limit
                                      style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontSize: 25,
                                        fontWeight: FontWeight.w700,
                                        height: 1,
                                        letterSpacing: 0.0,
                                        color: AppColors.buttonColor,
                                      ),
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintStyle: TextStyle(
                                            color: AppColors.buttonColor),
                                        counterText:
                                            '', // Hide the maxLength indicator
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              InkWell(
                                onTap: () async {
                                  await FlutterShare.share(
                                    title: 'Join My Party',
                                    text:
                                        'Join my party using this invite code: ${widget.inviteCode}',
                                  );
                                },
                                child: SizedBox(
                                  width: 306,
                                  height: 48,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: AppColors.buttonColor,
                                    ),
                                    padding:
                                        EdgeInsets.fromLTRB(16, 12, 16, 12),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Share Link",
                                          style: TextStyle(
                                            fontFamily: "Lato",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 15.0),
                                          child: SvgPicture.asset(
                                            'assets/svgIcons/share.svg',
                                            width: 30,
                                            height: 30,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Clipboard.setData(
                                      ClipboardData(text: widget.inviteCode));
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              'Invite code copied to clipboard!')));
                                },
                                child: SizedBox(
                                  width: 306,
                                  height: 48,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: AppColors.buttonColor,
                                    ),
                                    padding:
                                        EdgeInsets.fromLTRB(16, 12, 16, 12),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Copy Link",
                                          style: TextStyle(
                                            fontFamily: "Lato",
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                            height: 20 / 16,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(right: 15.0),
                                          child: SvgPicture.asset(
                                            'assets/svgIcons/copylink.svg',
                                            width: 30,
                                            height: 30,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Container(
                height: 48,
                width: 173,
                decoration: BoxDecoration(
                    color: AppColors.buttonColor,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Invite Friends",
                      style: TextStyle(
                        fontFamily: "Lato",
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SvgPicture.asset(
                      'assets/svgIcons/usercircle.svg',
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
