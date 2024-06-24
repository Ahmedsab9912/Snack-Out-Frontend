import 'dart:convert';
import 'package:eataly/API/api.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:eataly/PartyScreens/HostPartyScreen.dart';
import 'package:eataly/app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../NotificationScreen/NotificationPage.dart';
import 'JoineePartyScreen.dart';

class PartyScreen extends StatefulWidget {
  const PartyScreen({super.key});

  @override
  State<PartyScreen> createState() => _PartyScreenState();
}

class _PartyScreenState extends State<PartyScreen> {

  final joinCodeController = TextEditingController();

  String name = '';
  String? accessToken;

  @override
  void initState() {
    super.initState();
    _loadUsername();
    _loadAccessToken();
  }

  Future<void> _loadUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name') ?? 'UserName';
    });
  }

  Future<void> _loadAccessToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      accessToken = prefs.getString('accessToken');
    });
  }

  //START PARTY API
  Future<void> _startParty(BuildContext context) async {
    _showLoadingDialogHost(context);
    if (accessToken == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Access token is missing")),
      );
      return;
    }

    final url = Uri.parse('$baseURL/parties');
    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken'
    };
    final body = jsonEncode({"isHostPaying": true});

    try {
      final response = await http.post(url, headers: headers, body: body);
      print(response.body);
      if (response.statusCode == 201) {
        final responseData = jsonDecode(response.body);
        final inviteCode = responseData['data']['inviteCode'];

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Created new party')),
        );
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HostPartyScreen(inviteCode: inviteCode),
          ),
        );
      } else {
        // Handle other status codes if needed
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to start party: ${response.statusCode}')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error starting party: $e')),
      );
    }
  }

  // API FOR JOINING THROUGH CODE
  Future<void> joinParty() async {
    _showLoadingDialog(context);
    final url = Uri.parse('$baseURL/parties/${joinCodeController.text}/toggle');

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $accessToken',
    };

    final response = await http.patch(url, headers: headers);
    final responseData = jsonDecode(response.body);

    if (response.statusCode == 201) {
      final inviteCode = responseData['data']['inviteCode'];
      Fluttertoast.showToast(
          msg: 'Party Joined',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.SNACKBAR,
          backgroundColor: AppColors.buttonColor,
          textColor: Colors.white
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => JoineePartyScreen(inviteCode: inviteCode),
        ),
      );
    } else if (response.statusCode == 404) {
      Fluttertoast.showToast(
          msg: 'Invalid code',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.SNACKBAR,
          backgroundColor: Colors.red,
          textColor: Colors.white
      );
    } else {
      print(response.statusCode);
      Fluttertoast.showToast(
          msg: 'Joined Failed Invalid Code',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.SNACKBAR,
          backgroundColor: Colors.red,
          textColor: Colors.white
      );
    }
  }


  @override
  Widget build(BuildContext context) {



    // Get the screen size
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(2.0),
          child: Container(
            color: Colors.grey,
            height: 1.0,
          ),
        ),
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => Notificationpage(),
              //   ),
              // );
            },
            child: Image.asset(
              'assets/images/shoppingcart.png',
              width: 34,
              height: 34,
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Notificationpage(),
                  ),
                );
              },
              child: Image.asset(
                'assets/images/notificationpurple.png',
                width: 34,
                height: 34,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.9, // Responsive width
                height: size.height * 0.2,
                // margin: const EdgeInsets.only(top: 15),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text:  TextSpan(
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: AppColors.secondaryTextColor,
                        height: 1.2,
                      ),
                      children: [
                        TextSpan(text: 'Create the server and Invite Your\n'),
                        TextSpan(text: 'Friends to your Party',),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: size.width * 0.7, // Responsive width
                height: size.width * 0.7, // Make it square
                margin: const EdgeInsets.only(bottom: 5),
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("assets/images/objects.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: size.width * 0.8, // Responsive width
                margin: const EdgeInsets.only(top: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width * 0.90,// Responsive width
                      height: size.height * 0.065,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.buttonColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: InkWell(
                        onTap: () {
                          _startParty(context);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            Text(
                              'Start a Party',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return SingleChildScrollView(
                              child: Center(
                                child: AlertDialog(
                                  title: Column(
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:  EdgeInsets.only(left: 220),
                                            child: GestureDetector(
                                              onTap: () {
                                                // Navigate to PartyScreen when cross is tapped
                                                Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                     PartyScreen(),
                                                  ),
                                                );
                                              },
                                              child: Image.asset(
                                                'assets/images/Cross.png',
                                                width: 85,
                                                height: 85,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 280,
                                            height: 39,
                                            child: Text(
                                              'Send this link to your Friends and \nFamily to Add them in the Party.',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          SizedBox(
                                            width: 280,
                                            height: 80,
                                            child: Container(
                                              padding: EdgeInsets.fromLTRB(8, 7, 8, 7),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15),
                                                border: Border.all(
                                                  color: AppColors.buttonColor,
                                                  width: 1.5,
                                                ),
                                                color: AppColors.buttonTextColor,
                                              ),
                                              child: Center(
                                                child: TextFormField(
                                                  controller: joinCodeController,
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
                                                    hintStyle: TextStyle(color: AppColors.buttonColor),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          InkWell(
                                            onTap: () {
                                              // // Navigate to PartyDemoScreen when Copy Link is pressed
                                               // Navigator.push(
                                              //   context,
                                              //   MaterialPageRoute(
                                              //     builder: (context) => const PartyDemoScreen(),
                                              //   ),
                                              // );
                                            },
                                            child: SizedBox(
                                              width: 306,
                                              height: 48,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                  color: AppColors.buttonColor,
                                                ),
                                                padding:  EdgeInsets.fromLTRB(
                                                    16, 12, 16, 12),
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      'Share Link',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                     SizedBox(width: 8),
                                                    Image.asset(
                                                      'assets/images/share.png',
                                                      width: 30,
                                                      height: 30,
                                                    ),
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
                                              // // Navigate to PartyDemoScreen when Copy Link is pressed
                                              // Navigator.push(
                                              //   context,
                                              //   MaterialPageRoute(
                                              //     builder: (context) => const PartyDemoScreen(),
                                              //   ),
                                              // );
                                            },
                                            child: SizedBox(
                                              width: 306,
                                              height: 48,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                  color: AppColors.buttonColor,
                                                ),
                                                padding:  EdgeInsets.fromLTRB(
                                                    16, 12, 16, 12),
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children:  [
                                                    Text(
                                                      'Copy Code',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
                                                    SizedBox(width: 8),
                                                    Image.asset(
                                                      'assets/images/copylink.png',
                                                      width: 30,
                                                      height: 30,
                                                    ),
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
                                              joinParty();
                                            },
                                            child: SizedBox(
                                              width: 306,
                                              height: 48,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius.circular(12),
                                                  color: AppColors.buttonColor,
                                                ),
                                                padding:  EdgeInsets.fromLTRB(
                                                    16, 12, 16, 12),
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  children:  [
                                                    Text(
                                                      'Join Party',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 15,
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                    ),
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
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: Container(
                        width: size.width * 0.90,// Responsive width
                        height: size.height * 0.065,
                        padding: EdgeInsets.all(10),
                        margin:  EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.primaryTextColor,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Enter Through Code',
                              style: TextStyle(
                                color: AppColors.primaryTextColor,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
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
  Future<void> _showLoadingDialogHost(BuildContext context) {
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
                Text("Creating Party.."),
              ],
            ),
          ),
        );
      },
    );
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
                Text("Joining Party.."),
              ],
            ),
          ),
        );
      },
    );
  }
}
