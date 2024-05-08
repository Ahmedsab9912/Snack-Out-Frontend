import 'package:flutter/material.dart';
import 'partydemoscreen.dart';
import 'partyscreen.dart';

// ignore: use_key_in_widget_constructors
class AddFriendsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.95,
              height: 740,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
              ),
              padding: const EdgeInsets.all(16),
              child: Stack(
                children: [
                  Positioned(
                    top: 48,
                    left: 270,
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
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 100,
                    left: 70,
                    child: SizedBox(
                      width: 250,
                      height: 24,
                      child: Text(
                        'Friends & Family Link',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 145,
                    left: 125,
                    child: SizedBox(
                      width: 250,
                      height: 32,
                      child: Text(
                        'Eataly',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 220,
                    left: 25,
                    child: SizedBox(
                      width: 250,
                      height: 24,
                      child: Text(
                        'Hey,',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 245,
                    left: 25,
                    child: SizedBox(
                      width: 270,
                      height: 62,
                      child: Text(
                        'Send this link to your Friends and Family to Add them and share Rewards and Special Discounts Everyday.',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 315,
                    left: 25,
                    child: SizedBox(
                      width: 280,
                      height: 80,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(8, 7, 8, 7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color(0xFF00B288),
                            width: 1,
                          ),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFFFFFFFF),
                              Color(0xFFFFFFFF),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
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
                  ),
                  const Positioned(
                    top: 400,
                    left: 25,
                    child: SizedBox(
                      width: 270,
                      height: 62,
                      child: Text(
                        'Anyone can Follow this Link to Add You as Friend. Only share it with People you trust.',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 160,
                    left: 25,
                    right: 0,
                    child: InkWell(
                      onTap: () {
                        // Navigate to PartyDemoScreen when Copy Link is pressed
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PartyDemoScreen(),
                          ),
                        );
                      },
                      child: SizedBox(
                        width: 326,
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
                              const Text(
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
                  ),
                  Positioned(
                    bottom: 100,
                    left: 25,
                    right: 140,
                    child: SizedBox(
                      width: 163,
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
                            const Text(
                              'Share Link',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Image.asset(
                              'assets/images/sharelink.png',
                              width: 30,
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    left: 175,
                    right: 0,
                    child: SizedBox(
                      width: 163,
                      height: 48,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color(0xFF00B288),
                            width: 1,
                          ),
                        ),
                        padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'QR Code',
                              style: TextStyle(
                                color: Color(0xFF00B288),
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Image.asset(
                              'assets/images/qrcode.png',
                              width: 30,
                              height: 30,
                            ),
                          ],
                        ),
                      ),
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
}
