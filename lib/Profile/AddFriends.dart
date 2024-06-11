import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../Models/PendingFriendsModel.dart';
import '../app_theme/app_theme.dart';

class AddFriendsProfile extends StatefulWidget {
  const AddFriendsProfile({super.key});

  @override
  State<AddFriendsProfile> createState() => _AddFriendsProfileState();
}

class _AddFriendsProfileState extends State<AddFriendsProfile> {
  List<PendingFriendsModel> pendingListModel = [];
  List<PendingFriendsModel> searchListModel = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    getPendingFriends();
    searchController.addListener(() {
      searchFunction(searchController.text);
    });
  }

  Future<void> getPendingFriends() async {
    final String? accessToken = await getAccessToken();
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    };

    final response = await http.get(
      Uri.parse('http://192.168.10.5:8000/users/friends/pending'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var pendingFriends =
          (data as List).map((i) => PendingFriendsModel.fromJson(i)).toList();
      setState(() {
        pendingListModel = pendingFriends;
        searchListModel = pendingFriends;
      });
      print('Fetched ${pendingListModel.length} pending friends');
    } else {
      print('Error: ${response.statusCode}');
    }
  }

  void searchFunction(String searchKey) {
    setState(() {
      searchListModel = pendingListModel
          .where((pendingFriend) =>
              pendingFriend.user != null &&
              pendingFriend.user!.name != null &&
              pendingFriend.user!.name!
                  .toLowerCase()
                  .contains(searchKey.toLowerCase()))
          .toList();
    });
  }

  Future<String?> getAccessToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('accessToken');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Friends'),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Icon(Icons.search, color: Colors.grey),
                  ),
                  Expanded(
                    child: TextField(
                      controller: searchController,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 18.0),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Added Me',
                style: TextStyle(
                  color: AppColors.buttonColor,
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Expanded(
            child: searchListModel.isEmpty
                ? Center(child: CircularProgressIndicator())
                : ListView.builder(
                    itemCount: searchListModel.length,
                    itemBuilder: (context, index) {
                      final friend = searchListModel[index].user;
                      return friend != null
                          ? Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 4.0, horizontal: 8.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(
                                    10.0), // Set border radius to 10
                              ),
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundImage: friend.profileImage != null
                                      ? NetworkImage(friend.profileImage!)
                                      : null,
                                  child: friend.profileImage == null
                                      ? Icon(Icons.person)
                                      : null,
                                ),
                                title: Text(
                                  friend.name ?? 'Unknown',
                                  style: TextStyle(fontSize: 17),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        // Handle accept action
                                      },
                                      child: Container(
                                        height: 38,
                                        width: 79,
                                        decoration: BoxDecoration(
                                          color: AppColors
                                              .buttonColor, // button color
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.2),
                                              spreadRadius: 2,
                                              blurRadius: 4,
                                              offset: Offset(0,
                                                  2), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 12, horizontal: 20),
                                        child: Text(
                                          'Accept',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    GestureDetector(
                                      onTap: () {
                                        // Handle decline action
                                      },
                                      child: Container(
                                        height: 38,
                                        width: 82,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color:
                                                  Colors.red), // border color
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 12, horizontal: 20),
                                        child: Text(
                                          'Decline',
                                          style: TextStyle(color: Colors.red),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : Container(
                              height: 90,
                              margin: EdgeInsets.symmetric(
                                  vertical: 5.0, horizontal: 28.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(
                                    10.0), // Set border radius to 10
                              ),
                              child: ListTile(
                                title: Text('Unknown User'),
                              ),
                            );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
