import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'notificationsscreen.dart';

class YourPartyScreen extends StatelessWidget {
  const YourPartyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 390.0,
        height: 844.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32.0),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Container(
              width: 400,
              height: 120,
              padding: const EdgeInsets.only(
                top: 55,
                left: 24,
                right: 24,
                bottom: 0,
              ),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                border: const Border(
                  left: BorderSide(color: Color(0xFFD0D5DD)),
                  top: BorderSide(color: Color(0xFFD0D5DD)),
                  right: BorderSide(color: Color(0xFFD0D5DD)),
                  bottom: BorderSide(width: 0.50, color: Color(0xFFD0D5DD)),
                ),
              ),
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Good Morning',
                            style: TextStyle(
                              color: Color(0xFF222222),
                              fontSize: 14,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w500,
                              height: 0,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'John Doe',
                            style: TextStyle(
                              color: Color(0xFF222222),
                              fontSize: 22,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w600,
                              height: 0,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 190),
                      Image(
                        width: 24,
                        height: 24,
                        image: AssetImage('assets/images/notification.png'),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const Positioned(
              top: 180,
              left: 24,
              child: SizedBox(
                width: 322,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Party',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 33,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0,
                        color: Color(0xFF222222),
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'People you add in your Party will Appear here',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0,
                        color: Colors.grey,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 320,
              left: 22,
              child: SizedBox(
                width: 335,
                height: 104,
                child: SizedBox(
                  width:
                      double.infinity, // Set a width larger than the blue frame
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(memberData.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 32,
                                backgroundImage:
                                    AssetImage(memberData[index]['image']!),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                memberData[index]['name']!,
                                style: const TextStyle(
                                  color: Color(0xFF222222),
                                  fontFamily: 'Lato',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  height:
                                      1.67, // Equivalent to line-height: 20px
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 280,
              left: 25,
              child: Container(
                width: 320,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFFFEFB8D),
                      Color(0xFFFFA4A4),
                      Color(0xFFFFA3FB),
                      Color(0xFF9DC4FF),
                      Color(0xFFA7FFD3),
                    ],
                    stops: [0.0, 0.235, 0.51, 0.77, 1.0],
                  ),
                ),
                child: Row(
                  children: List.generate(14, (index) {
                    List<double> leftPositions = [
                      16.0,
                      39.93,
                      63.86,
                      87.78,
                      111.71,
                      135.34,
                      159.57,
                      183.49,
                      207.42,
                      231.35,
                      255.28,
                      279.21,
                      303.13,
                      327.06
                    ];

                    return Positioned(
                      top: -6.0,
                      left: leftPositions[index],
                      child: Transform.rotate(
                        angle: 10 * (3.14159 / 180),
                        child: SizedBox(
                          width: 22,
                          height: 60,
                          child: SvgPicture.asset(
                            'assets/svgIcons/rectangle10.svg',
                            color: const Color.fromARGB(255, 107, 105, 105),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            Positioned(
              top: 590,
              left: 32,
              child: InkWell(
                onTap: () {
                  // Navigate to NotificationsScreen when the button is pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationsScreen(),
                    ),
                  );
                },
                child: Container(
                  width: 300,
                  height: 48,
                  padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xFF00B288),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Row(
                        children: [
                          Text(
                            'Lets Party',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 8),
                          // Image.asset(
                          //   'assets/images/confetty.png',
                          //   width: 100,
                          //   height: 180,
                          // ),
                        ],
                      ),
                    ],
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

void main() {
  runApp(const MaterialApp(
    home: YourPartyScreen(),
  ));
}

// Sample member data
List<Map<String, String>> memberData = [
  {'name': 'You', 'image': 'assets/images/you.png'},
  {'name': 'Eddie', 'image': 'assets/images/eddie.png'},
  {'name': 'Audrey', 'image': 'assets/images/audrey.png'},
  {'name': 'Romanov', 'image': 'assets/images/romanov.png'},
  {'name': 'Mark', 'image': 'assets/images/mark.png'},
  {'name': 'Albert', 'image': 'assets/images/albert.png'},
  {'name': 'freddie', 'image': 'assets/images/freddie.png'},
];
