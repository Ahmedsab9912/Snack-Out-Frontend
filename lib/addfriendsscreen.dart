import 'package:flutter/material.dart';
import 'PartyScreens/partyscreen.dart';

// ignore: use_key_in_widget_constructors
class AddFriendsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: 432,
            height: 932,
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage('assets/images/Profilebck.png'),
                fit: BoxFit.cover,
              ),
              color: Colors.black.withOpacity(0.9),
            ),
          ),
          // THIS IS THE LINEAR GRADIENT SHADOW
          Container(
            width: 432,
            height: 932,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: const Alignment(0.01, 1.00),
                end: const Alignment(-0.01, -1),
                colors: [
                  Color.fromARGB(255, 255, 255, 255),
                  Colors.black.withOpacity(0.1)
                ],
              ),
            ),
          ),
          // Background Image
          // Positioned.fill(
          //   child: ClipRect(
          //     child: BackdropFilter(
          //       filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          //       child: Container(
          //         color: Colors.black
          //             .withOpacity(0.9), // Optionally adjust the darkness
          //         child: Image.asset(
          //           'assets/images/Profilebck.png',
          //           fit: BoxFit.cover,
          //           colorBlendMode: BlendMode
          //               .darken, // Optionally darken the image to make text more readable
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Center(
            child: Container(
              height: 400,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes the position of the shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 220),
                    child: GestureDetector(
                      onTap: () {
                        // Navigate to PartyScreen when cross is tapped
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PartyScreen()),
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
                      padding: const EdgeInsets.fromLTRB(8, 7, 8, 7),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: const Color(0xFF00B288),
                          width: 1.5,
                        ),
                        color: Color.fromARGB(255, 221, 240, 236),
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
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xFF00B288),
                        ),
                        padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                          borderRadius: BorderRadius.circular(12),
                          color: const Color(0xFF00B288),
                        ),
                        padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
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
                    height: 80,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
