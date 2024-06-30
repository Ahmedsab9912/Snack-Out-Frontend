import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../API/api.dart';
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
  late Future<void> _loadingFuture;

  @override
  void initState() {
    super.initState();
    _loadingFuture = _loadData();
    searchController.addListener(() {
      searchFunction(searchController.text);
    });
  }

  Future<void> _loadData() async {
    await getPendingFriends();
    // await Future.delayed(Duration(seconds: 1));
  }

  Future<void> getPendingFriends() async {
    final String? accessToken = await getAccessToken();
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    };

    final response = await http.get(
      Uri.parse('$baseURL/users/friends/pending'),
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

  Future<void> handleFriendRequest(String friendshipId, String status) async {
    final String? accessToken = await getAccessToken();
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    };

    final body = jsonEncode({"status": status});

    final response = await http.patch(
      Uri.parse('$baseURL/users/friends/$friendshipId'),
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200 || response.statusCode == 204) {
      print('Friend request $status successfully');
      getPendingFriends(); // Refresh the list after updating
    } else {
      print(response.body);
      print('Error: ${response.statusCode}');
    }
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
            child: FutureBuilder<void>(
              future: _loadingFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return searchListModel.isEmpty
                      ? Text('No Friend Request',style: TextStyle(fontSize: 18,color: AppColors.buttonColor,fontWeight: FontWeight.bold),)
                      : ListView.builder(
                    itemCount: searchListModel.length,
                    itemBuilder: (context, index) {
                      final friend = searchListModel[index].user;
                      final friendshipId = searchListModel[index].id;
                      return friend != null
                          ? Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 4.0, horizontal: 8.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                            friend.profileImage != null
                                ? NetworkImage(
                                friend.profileImage!)
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
                                  handleFriendRequest(
                                      friendshipId.toString(),
                                      "ACCEPTED");
                                },
                                child: Container(
                                  height: 38,
                                  width: 79,
                                  decoration: BoxDecoration(
                                    color: AppColors.buttonColor,
                                    borderRadius:
                                    BorderRadius.circular(10.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black
                                            .withOpacity(0.2),
                                        spreadRadius: 2,
                                        blurRadius: 4,
                                        offset: Offset(0, 2),
                                      ),
                                    ],
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 20),
                                  child: Text(
                                    'Accept',
                                    style: TextStyle(
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),
                              GestureDetector(
                                onTap: () {
                                  handleFriendRequest(
                                      friendshipId.toString(),
                                      "DECLINED");
                                },
                                child: Container(
                                  height: 38,
                                  width: 82,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.red),
                                    borderRadius:
                                    BorderRadius.circular(10.0),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      vertical: 12,
                                      horizontal: 20),
                                  child: Text(
                                    'Decline',
                                    style:
                                    TextStyle(color: Colors.red),
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
                          borderRadius:
                          BorderRadius.circular(10.0),
                        ),
                        child: ListTile(
                          title: Text('Unknown User'),
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
