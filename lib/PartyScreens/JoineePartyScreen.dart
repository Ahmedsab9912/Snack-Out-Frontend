import 'dart:convert';

import 'package:eataly/yourpartyscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../API/api.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import '../Models/PartyMembersModel.dart';
import '../Provider/ChatProvider.dart';
import '../app_theme/app_theme.dart';
import '../components/BottomSheet.dart';
import '../components/bottomNavigatorBar.dart';
import 'HostPartyFriendsPage.dart';
import 'JoineePartyFriendsPage.dart';

class JoineePartyScreen extends StatefulWidget {
  final String inviteCode;
  const JoineePartyScreen({required this.inviteCode, super.key});

  @override
  State<JoineePartyScreen> createState() => _JoineePartyScreenState();
}

class _JoineePartyScreenState extends State<JoineePartyScreen> {
  late IO.Socket socket;
  String? accessToken;

  final List<ChatMessage> _messages = [];
  List<ChatMessage> get messages => _messages;

  @override
  void initState() {
    super.initState();
    _initializeSocket();
    _loadAccessToken();
    fetchPartyMembers();
  }

  @override
  void dispose() {
    print("Disposing screen...");
    socket.dispose();
    socket.disconnect();
    super.dispose();
  }

  Future<void> _initializeSocket() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    accessToken = prefs.getString('accessToken');

    socket = IO.io(
      'wss://snack-mate-backend-production.up.railway.app',
      IO.OptionBuilder().setTransports(['websocket']).setExtraHeaders(
          {'access_token': accessToken}).build(),
    );

    socket.onConnect((_) {
      print('Connected');
      socket.emit('party/join', widget.inviteCode);
    });

    socket.onConnectError((data) {
      print('Connection Error: ${data.toString()}'); // Or use a logging package
    });

    socket.onDisconnect((_) {
      print('Disconnected');
    });

    socket.on("party/info", (data) => print(jsonEncode(data)));
  }

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
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Joineepartyfriendspage(inviteCode: widget.inviteCode),
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
      body: SingleChildScrollView(
        child: Padding(
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
                child: SvgPicture.asset(
                  'assets/svgIcons/partyGroup.svg',
                  width: size.width * 0.7,
                  height: size.height * 0.19,
                ),
              ),
              SizedBox(
                height: 35.0,
              ),
              InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Leave Party"),
                        content: Text(
                          "Are you sure you want to leave the party?",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 14),
                        ),
                        actions: <Widget>[
                          SizedBox(
                            height: 35,
                            width: 90,
                            child: OutlinedButton(
                              onPressed: () {
                                leaveParty();
                              },
                              style: OutlinedButton.styleFrom(
                                side: BorderSide(
                                    width: 1, color: AppColors.alert),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                ),
                              ),
                              child: Text(
                                "Leave",
                                style: TextStyle(color: AppColors.alert),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 35,
                            width: 80,
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
                              child: Text(
                                "Stay",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          )
                        ],
                      );
                    },
                  );
                },
                child: Container(
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
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) => Bottomsheet(
                                  myinviteCode: widget.inviteCode,
                                  socket: socket,
                                  messages: _messages,
                                ));
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
                            child: SvgPicture.asset(
                              'assets/svgIcons/chat.svg',
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
  return prefs
      .getString('profileImage'); // Replace 'userImageUrl' with the actual key
}


// void _showChatModalBottomSheet(BuildContext context) async {
//   String? userImageUrl = await _loadUserImage(); // Load user image URL from SharedPreferences
//   final screensize = MediaQuery.of(context).size;

//   showModalBottomSheet(
//     backgroundColor: Colors.transparent,
//     context: context,
//     isScrollControlled: true,
//     builder: (BuildContext context) {
//       return Padding(
//         padding: EdgeInsets.symmetric(horizontal: 24.0), // Adjust margin as needed
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(20.0),
//               topRight: Radius.circular(20.0),
//             ),
//           ),
//           child: Padding(
//             padding: EdgeInsets.only(
//               bottom: MediaQuery.of(context).viewInsets.bottom,
//               left: 12.0, // Added horizontal margin
//               right: 12.0, // Added horizontal margin
//             ),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     padding: EdgeInsets.only(left: 12.0),
//                     height: screensize.height * 0.10, // Adjust height as needed
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: <Widget>[
//                         Padding(
//                           padding:  EdgeInsets.only(top: 10,left: 24),
//                           child: TextFormField(
//                             decoration: InputDecoration(
//                               border: OutlineInputBorder(),
//                               labelText: 'Enter your message',
//                               suffixIcon: Icon(
//                                 Icons.send,
//                                 color: AppColors.primaryTextColor,
//                               ),
//                             ),
//                             style: TextStyle(fontSize: 14), // Reduce font size if needed
//                             maxLines: 1, // Ensure single line height
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding:  EdgeInsets.only(bottom: 15),
//                   child: Container(
//                     height: 32,
//                     width: 32,
//                     margin: EdgeInsets.only(left: 8.0), // Optional margin for spacing
//                     child: CircleAvatar(
//                       backgroundImage: userImageUrl != null
//                           ? NetworkImage(userImageUrl)
//                           : AssetImage('assets/images/you.png') as ImageProvider<Object>, // Fallback to a local image if no URL
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
//     },
//   );
// }


