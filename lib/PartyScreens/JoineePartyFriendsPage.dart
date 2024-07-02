import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../API/api.dart';
import '../Models/PartyMembersModel.dart';
import '../app_theme/app_theme.dart';
import 'ActivePartyFriends.dart';

class Joineepartyfriendspage extends StatefulWidget {
  final String inviteCode;
  Joineepartyfriendspage({required this.inviteCode, Key? key})
      : super(key: key);

  @override
  State<Joineepartyfriendspage> createState() => _JoineepartyfriendspageState();
}

class _JoineepartyfriendspageState extends State<Joineepartyfriendspage> {
  String? accessToken;

  @override
  void initState() {
    super.initState();
    _loadAccessToken();
    fetchPartyMembers();
    fetchFriends();
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
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff222222),
                                    ),
                                  ),
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
                              width: 375,
                              height: 64,
                              child: Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(12),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          member.profileImage.toString()),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        member.username.toString(),
                                        style: TextStyle(
                                          fontFamily: "Lato",
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff222222),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: SizedBox(),
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
          ],
        ),
      ),
    );
  }
}
