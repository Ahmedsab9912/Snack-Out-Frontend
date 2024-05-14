import 'package:eataly/PartyScreens/partyscreen.dart';
import 'package:flutter/material.dart';

class PartyDemoScreen extends StatelessWidget {
  const PartyDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 390,
              height: 500,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: 400,
                    height: 10,
                    padding: const EdgeInsets.only(
                      // top: 55,
                      left: 24,
                      right: 24,
                      bottom: 0,
                    ),
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.800000011920929),
                      border: const Border(
                        left: BorderSide(color: Color(0xFFD0D5DD)),
                        top: BorderSide(color: Color(0xFFD0D5DD)),
                        right: BorderSide(color: Color(0xFFD0D5DD)),
                        bottom:
                            BorderSide(width: 0.50, color: Color(0xFFD0D5DD)),
                      ),
                    ),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // SizedBox(
                        //   width: double.infinity,
                        //   child: Row(
                        //     mainAxisSize: MainAxisSize.min,
                        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //     crossAxisAlignment: CrossAxisAlignment.center,
                        //     children: [
                        //       SizedBox(
                        //         child: Column(
                        //           mainAxisSize: MainAxisSize.min,
                        //           mainAxisAlignment: MainAxisAlignment.start,
                        //           crossAxisAlignment: CrossAxisAlignment.start,
                        //           children: [
                        //             Text(
                        //               'Good Morning',
                        //               style: TextStyle(
                        //                 color: Color(0xFF222222),
                        //                 fontSize: 14,
                        //                 fontFamily: 'Lato',
                        //                 fontWeight: FontWeight.w500,
                        //                 height: 0,
                        //               ),
                        //             ),
                        //             SizedBox(height: 2),
                        //             Text(
                        //               'John Doe',
                        //               style: TextStyle(
                        //                 color: Color(0xFF222222),
                        //                 fontSize: 22,
                        //                 fontFamily: 'Lato',
                        //                 fontWeight: FontWeight.w600,
                        //                 height: 0,
                        //               ),
                        //             ),
                        //           ],
                        //         ),
                        //       ),
                        //       SizedBox(width: 190),
                        //       Image(
                        //         width: 24,
                        //         height: 24,
                        //         image: AssetImage(
                        //             'assets/images/notification.png'),
                        //       )
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 95,
                    margin: const EdgeInsets.only(top: 15, left: 0, right: 90),
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
                            TextSpan(text: 'How To Party?'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 305,
                    height: 45,
                    child: InkWell(
                      // onTap: () => Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => AddFriendsPage(),
                      //   ),
                      // ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 40,
                            height: 40,
                            child: Image.asset(
                              'assets/images/addfriendss.png',
                            ),
                          ),
                          const SizedBox(width: 16),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 101,
                                height: 25,
                                child: Text(
                                  'Add Friends',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 101,
                                height: 20,
                                child: Text(
                                  'Who want to Party',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF888888),
                                    height: 0,
                                    letterSpacing: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 305,
                    height: 45,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            'assets/images/wallet.png',
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 180,
                              height: 25,
                              child: Text(
                                'Pay for Your Meal',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 150,
                              height: 20,
                              child: Text(
                                'Everyone Pays Separately',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF888888),
                                  height: 0,
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 305,
                    height: 45,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            'assets/images/happyemoji.png',
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 190,
                              height: 25,
                              child: Text(
                                'Hosts Place the Order',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 150,
                              height: 20,
                              child: Text(
                                'When Everyone is Ready',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF888888),
                                  height: 0,
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 305,
                    height: 45,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            'assets/images/cup.png',
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 180,
                              height: 25,
                              child: Text(
                                'Reward for Party',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 190,
                              height: 20,
                              child: Text(
                                'Party Earns a Discount as Reward',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF888888),
                                  height: 0,
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 305,
                    height: 45,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            'assets/images/tagright.png',
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 180,
                              height: 25,
                              child: Text(
                                'Not Actually Hungry',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 150,
                              height: 20,
                              child: Text(
                                'Come Back Later',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF888888),
                                  height: 0,
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 160,
              left: 25,
              right: 0,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PartyScreen(),
                    ),
                  );
                },
                child: SizedBox(
                  width: 300,
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
                          'Lets Party',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Image.asset(
                          'assets/images/redeem.png',
                          width: 30,
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
