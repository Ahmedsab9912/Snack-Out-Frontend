import 'package:eataly/PartyScreens/StartPartyScreen.dart';
import 'package:flutter/material.dart';
import '../addfriendsscreen.dart';

class PartyScreen extends StatelessWidget {
  const PartyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 322,
                height: 235,
                margin: const EdgeInsets.only(top: 15, left: 5, right: 24),
                child: Center(
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF222222),
                        height: 1.2,
                      ),
                      children: [
                        TextSpan(text: 'Start Partying with\n'),
                        TextSpan(text: 'your Friends'),
                      ],
                    ),
                  ),
                ),
              ),
              // const SizedBox(height: 10),
              Container(
                width: 250,
                height: 250,
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
                width: 291,
                height: 190,
                margin: const EdgeInsets.only(top: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 280,
                      height: 44,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: const Color(0xFF00B288),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: InkWell(
                        onTap: () {
                          // Navigate to PartyDemoScreen when Copy Link is pressed
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StartPartyScreen(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Start a Party',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Image.asset(
                            //   'assets/images/addfriends.png',
                            //   width: 30,
                            //   height: 30,
                            // ),
                          ],
                        ),
                      ),
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
                                      padding: const EdgeInsets.only(left: 220),
                                      child: GestureDetector(
                                        onTap: () {
                                          // Navigate to PartyScreen when cross is tapped
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const PartyScreen()),
                                          );
                                        },
                                        child: Image.asset(
                                          'assets/images/Cross.png',
                                          width: 45,
                                          height: 45,
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
                                        padding: const EdgeInsets.fromLTRB(
                                            8, 7, 8, 7),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border: Border.all(
                                            color: const Color(0xFF00B288),
                                            width: 1.5,
                                          ),
                                          color: Color.fromARGB(
                                              255, 221, 240, 236),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'http://eataly.com/party/invite123456789abcdefghijk123456789abcdefghijk12345678',
                                            style: TextStyle(
                                              fontFamily: 'Lato',
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                              height: 1,
                                              letterSpacing: 0.0,
                                              color: Color(0xFF00B288),
                                            ),
                                            textAlign: TextAlign.center,
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
                                            color: const Color(0xFF00B288),
                                          ),
                                          padding: const EdgeInsets.fromLTRB(
                                              16, 12, 16, 12),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Copy Link',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(width: 8),
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
                                            color: const Color(0xFF00B288),
                                          ),
                                          padding: const EdgeInsets.fromLTRB(
                                              16, 12, 16, 12),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Text(
                                                'Copy Code',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              // const SizedBox(width: 8),
                                              // Image.asset(
                                              //   'assets/images/copylink.png',
                                              //   width: 30,
                                              //   height: 30,
                                              // ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 40,
                                    ),
                                  ],
                                ),
                              ],
                            ));
                          },
                        );
                      },
                      child: Container(
                        width: 280,
                        height: 44,
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFF00B288),
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Join a Party Through Code',
                              style: TextStyle(
                                color: Color(0xFF00B288),
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
}
