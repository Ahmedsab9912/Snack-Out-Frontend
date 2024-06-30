
import 'dart:async';
import 'dart:convert';

import 'package:eataly/app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

import '../API/api.dart';
import '../Models/PartyMembersModel.dart';
import '../components/BottomSheet.dart';
import 'AddFriendsScreen.dart';
import 'HostPartyFriendsPage.dart';

class HostPartyScreen extends StatefulWidget {
  final String inviteCode;

  const HostPartyScreen({required this.inviteCode, Key? key}) : super(key: key);

  @override
  State<HostPartyScreen> createState() => _HostPartyScreenState();
}

class _HostPartyScreenState extends State<HostPartyScreen> {
  late IO.Socket socket;
  String? accessToken;

  @override
  void initState() {
    super.initState();
    _initializeSocket();
    _loadAccessToken();
    fetchPartyMembers();
  }

  @override
  void dispose() {
    socket.dispose();
    socket.disconnect();
    super.dispose();
  }

  Future<void> _initializeSocket() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    accessToken = prefs.getString('accessToken');

    socket = IO.io(
      'wss://snack-mate-backend-production.up.railway.app',
      IO.OptionBuilder()
          .setTransports(['websocket'])
          .setExtraHeaders({'access_token': accessToken ?? ''})
          .build(),
    );

    socket.onConnect((_) {
      print('Connected');
      socket.emit('party/join', widget.inviteCode);
    });

    socket.on("party/info", (data) => print(jsonEncode(data)));

    socket.onConnectError((data) {
      print('Connection Error: ${data.toString()}'); // Or use a logging package
    });

    socket.on("party/new-message", (data) {
      Map<String, dynamic> messageData = jsonDecode(data);
      String sender = messageData['sender'];
      String content = messageData['content'];
      // ... (Update your chat UI)
    });


    socket.onConnectError((data) {
      print('Connection Error: $data');
    });

    socket.onDisconnect((_) {
      print('Disconnected');
    });
  }

  Future<void> _loadAccessToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      accessToken = prefs.getString('accessToken');
    });
  }

  // PARTY-MEMBERS API
  Future<PartyMembersModel> fetchPartyMembers() async {
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    };

    final response = await http.get(
      Uri.parse('$baseURL/parties/${widget.inviteCode}'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return PartyMembersModel.fromJson(data);
    } else {
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
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      HostPartyfriendspage(inviteCode: widget.inviteCode),
                ),
              );
            },
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: SvgPicture.asset(
                'assets/svgIcons/groups.svg',
                width: 30,
                height: 30,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: SvgPicture.asset(
              'assets/svgIcons/notifications.svg',
              width: 30,
              height: 30,
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
                      color: Colors.black, // Example color, adjust as needed
                      fontSize: 17),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              height: 80,
              child: FutureBuilder<PartyMembersModel>(
                future: fetchPartyMembers(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  } else if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  } else if (snapshot.hasData) {
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:
                      snapshot.data!.data?.partyMembers?.length ?? 0,
                      itemBuilder: (context, index) {
                        final member =
                        snapshot.data!.data!.partyMembers?[index];
                        return Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    member!.profileImage.toString()),
                              ),
                              Text(member.username.toString()),
                            ],
                          ),
                        );
                      },
                    );
                  } else {
                    return Center(child: Text('No party members available'));
                  }
                },
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 33),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Host Controls',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primaryTextColor,) // Example color, adjust as needed
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 33, right: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Party on the Host',
                    style:
                    TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  Radio<String>(
                    value: 'on',
                    groupValue: 'on',
                    onChanged: (value) {
                      // Handle radio button selection
                    },
                    activeColor: AppColors.primaryTextColor, // Example color, adjust as needed
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 33, right: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Go Dutch',
                    style:
                    TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  Radio<String>(
                    value: 'off',
                    groupValue: 'on',
                    onChanged: (value) {
                      // Handle radio button selection
                    },
                    activeColor: Colors.black, // Example color, adjust as needed
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: Image.asset(
                'assets/images/Group.png',
                width: 250,
                height: 250,
              ),
            ),
            const SizedBox(
              height: 25.0,
            ),
            Container(
              height: 48,
              width: 306,
              decoration: BoxDecoration(
                  color: AppColors.buttonColor, // Example color, adjust as needed
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text('Make a Booking',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),
            ),
            SizedBox(
              height: 33.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
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
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context, builder: (context) => Bottomsheet());
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

  Widget _buildFriendAvatar(BuildContext context, String imagePath, String name) {
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
