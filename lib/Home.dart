// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'searchscreen.dart';
import 'components/topNavigationBar.dart';

class ToggleIcon extends StatefulWidget {
  const ToggleIcon({super.key});

  @override
  _ToggleIconState createState() => _ToggleIconState();
}

class _ToggleIconState extends State<ToggleIcon> {
  bool _isFilled = false; // Initial state of the icon

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isFilled = !_isFilled; // Toggle the state on tap
        });
      },
      child: _isFilled
          ? SvgPicture.asset(
              'assets/svgIcons/filledHeart.svg', // Path to the filled SVG icon
              width: 24,
              height: 24,
            )
          : SvgPicture.asset(
              'assets/svgIcons/emptyHeart.svg', // Path to the unfilled SVG icon
              width: 24,
              height: 24,
            ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //implements basic material design
      body: ListView(
        //scrolling widget
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SearchScreen()),
              );
            },
            child: Container(
                height: 50,
              margin: const EdgeInsets.only(
                  left: 24, right: 24, top: 34, bottom: 24),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: const Color(0xFFD0D5DD),
                  width: 1,
                ),
              ),
              child: Row(
                children:  [
                  Icon(Icons.search), // Icon widget
                  SizedBox(width: 8), // Spacing between the icon and the text
                  Text('Search',style: TextStyle(fontSize: 19),), // Text widget
                ],
              ),
            ),
          ),
          SizedBox(
            height: 144,  // Set a height for the horizontal scroll area
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const TopNavigationBarManu()), // Navigate to NewScreen1
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Container(
                        //secondcontainer
                        width: 253,
                        height: 144,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment(0.95, -0.31),
                            end: Alignment(-0.95, 0.31),
                            colors: [Color(0xFFFF9800), Color(0xFFFFC659)],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        child: Stack(
                          children: [
                            const Positioned(
                              left: 16,
                              top: 16,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Bagh Restaurant',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Upto 70 % Off',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              left: 60,
                              top: 16,
                              child: Container(
                                width: 194,
                                height: 129,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/biryani.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 16,
                              top: 104,
                              child: Container(
                                width: 24,
                                height: 24,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/baghIcon.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                      width: 2,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(159),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const TopNavigationBarManu()), // Navigate to NewScreen2
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 16,
                          right:
                              16), // Add padding to both sides of the second container
                      child: Container(
                        width: 253,
                        height: 144,
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment(0.95, -0.31),
                            end: Alignment(-0.95, 0.31),
                            colors: [Color(0xFF00C572), Color(0xFF89FFDB)],
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        child: Stack(
                          children: [
                            const Positioned(
                              left: 16,
                              top: 16,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Junoon Restaurant',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    'Upto 70 % Off',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              left: 16,
                              top: 104,
                              child: Container(
                                width: 24,
                                height: 24,
                                decoration: ShapeDecoration(
                                  image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/junoonIcon.png'),
                                    fit: BoxFit.fill,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    side: const BorderSide(
                                      width: 2,
                                      strokeAlign:
                                          BorderSide.strokeAlignOutside,
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(159),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 60,
                              top: 16,
                              child: Container(
                                width: 194,
                                height: 129,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/biryani.png'),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
                top: 24,
                bottom: 8,
                left: 24), // Add 24px top margin and 8px bottom padding
            child: Text(
              'Restaurants Near You',
              style: TextStyle(
                color: Color.fromARGB(255, 8, 8, 8),
                fontSize: 16,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          SizedBox(
            height: 320, // Adjust the height as needed to fit your design
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24, right: 16),
                    child: Container(
                      width: 212,
                      height: 310,
                      padding: const EdgeInsets.all(12),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 1, color: Color(0xFFD0D5DD)),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 186,
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 186,
                                      height: 173,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/black.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 12),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .start, // Adjust alignment as needed
                                    children: [
                                      Text(
                                        'Black Restaurant',
                                        style: TextStyle(
                                          color: Color(0xFF222222),
                                          fontSize: 16,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w600,
                                          height: 0,
                                        ),
                                      ),
                                      Spacer(),
                                      ToggleIcon(),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  const Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '\$\$\$',
                                        style: TextStyle(
                                          color: Color(0xFF888888),
                                          fontSize: 14,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        '.',
                                        style: TextStyle(
                                          color: Color(0xFF888888),
                                          fontSize: 14,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        'Continental',
                                        style: TextStyle(
                                          color: Color(0xFF888888),
                                          fontSize: 14,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    '3.1 mi away',
                                    style: TextStyle(
                                      color: Color(0xFF888888),
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text(
                                        '4.5',
                                        style: TextStyle(
                                          color: Color(0xFF888888),
                                          fontSize: 14,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                      const SizedBox(width: 4),
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 16,
                                            height: 16,
                                            decoration: const ShapeDecoration(
                                              color: Color(0xFFFFCC1B),
                                              shape: StarBorder(
                                                points: 5,
                                                innerRadiusRatio: 0.38,
                                                pointRounding: 0,
                                                valleyRounding: 0,
                                                rotation: 0,
                                                squash: 0,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 4),
                                          Container(
                                            width: 16,
                                            height: 16,
                                            decoration: const ShapeDecoration(
                                              color: Color(0xFFFFCC1B),
                                              shape: StarBorder(
                                                points: 5,
                                                innerRadiusRatio: 0.38,
                                                pointRounding: 0,
                                                valleyRounding: 0,
                                                rotation: 0,
                                                squash: 0,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 4),
                                          Container(
                                            width: 16,
                                            height: 16,
                                            decoration: const ShapeDecoration(
                                              color: Color(0xFFFFCC1B),
                                              shape: StarBorder(
                                                points: 5,
                                                innerRadiusRatio: 0.38,
                                                pointRounding: 0,
                                                valleyRounding: 0,
                                                rotation: 0,
                                                squash: 0,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 4),
                                          Container(
                                            width: 16,
                                            height: 16,
                                            decoration: const ShapeDecoration(
                                              color: Color(0xFFFFCC1B),
                                              shape: StarBorder(
                                                points: 5,
                                                innerRadiusRatio: 0.38,
                                                pointRounding: 0,
                                                valleyRounding: 0,
                                                rotation: 0,
                                                squash: 0,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(width: 4),
                                          Container(
                                            width: 16,
                                            height: 16,
                                            decoration: const ShapeDecoration(
                                              color: Color(0xFFD9D9D9),
                                              shape: StarBorder(
                                                points: 5,
                                                innerRadiusRatio: 0.38,
                                                pointRounding: 0,
                                                valleyRounding: 0,
                                                rotation: 0,
                                                squash: 0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Container(
                        width: 212,
                        height: 310,
                        padding: const EdgeInsets.all(12),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                                width: 1, color: Color(0xFFD0D5DD)),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 186,
                                        height: 173,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'assets/images/marina.png'),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 12),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .start, // Adjust alignment as needed
                                      children: [
                                        Text(
                                          'Marina’s Cafe',
                                          style: TextStyle(
                                            color: Color(0xFF222222),
                                            fontSize: 16,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w600,
                                            height: 0,
                                          ),
                                        ),
                                        Spacer(),
                                        ToggleIcon(),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    const Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '\$\$\$',
                                          style: TextStyle(
                                            color: Color(0xFF888888),
                                            fontSize: 14,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          '.',
                                          style: TextStyle(
                                            color: Color(0xFF888888),
                                            fontSize: 14,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          'Tea & Biscuits',
                                          style: TextStyle(
                                            color: Color(0xFF888888),
                                            fontSize: 14,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      '10.1 mi away',
                                      style: TextStyle(
                                        color: Color(0xFF888888),
                                        fontSize: 14,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    const SizedBox(height: 8),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          '4.5',
                                          style: TextStyle(
                                            color: Color(0xFF888888),
                                            fontSize: 14,
                                            fontFamily: 'Lato',
                                            fontWeight: FontWeight.w400,
                                            height: 0,
                                          ),
                                        ),
                                        const SizedBox(width: 4),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              width: 16,
                                              height: 16,
                                              decoration: const ShapeDecoration(
                                                color: Color(0xFFFFCC1B),
                                                shape: StarBorder(
                                                  points: 5,
                                                  innerRadiusRatio: 0.38,
                                                  pointRounding: 0,
                                                  valleyRounding: 0,
                                                  rotation: 0,
                                                  squash: 0,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 4),
                                            Container(
                                              width: 16,
                                              height: 16,
                                              decoration: const ShapeDecoration(
                                                color: Color(0xFFFFCC1B),
                                                shape: StarBorder(
                                                  points: 5,
                                                  innerRadiusRatio: 0.38,
                                                  pointRounding: 0,
                                                  valleyRounding: 0,
                                                  rotation: 0,
                                                  squash: 0,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 4),
                                            Container(
                                              width: 16,
                                              height: 16,
                                              decoration: const ShapeDecoration(
                                                color: Color(0xFFFFCC1B),
                                                shape: StarBorder(
                                                  points: 5,
                                                  innerRadiusRatio: 0.38,
                                                  pointRounding: 0,
                                                  valleyRounding: 0,
                                                  rotation: 0,
                                                  squash: 0,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 4),
                                            Container(
                                              width: 16,
                                              height: 16,
                                              decoration: const ShapeDecoration(
                                                color: Color(0xFFFFCC1B),
                                                shape: StarBorder(
                                                  points: 5,
                                                  innerRadiusRatio: 0.38,
                                                  pointRounding: 0,
                                                  valleyRounding: 0,
                                                  rotation: 0,
                                                  squash: 0,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 4),
                                            Container(
                                              width: 16,
                                              height: 16,
                                              decoration: const ShapeDecoration(
                                                color: Color(0xFFD9D9D9),
                                                shape: StarBorder(
                                                  points: 5,
                                                  innerRadiusRatio: 0.38,
                                                  pointRounding: 0,
                                                  valleyRounding: 0,
                                                  rotation: 0,
                                                  squash: 0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
                top: 24,
                bottom: 8,
                left: 24), // Add 24px top margin and 8px bottom margin
            child: Text(
              'Recently Used Places',
              style: TextStyle(
                color: Color(0xFF00B288),
                fontSize: 16,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          SizedBox(
            height: 320, // Adjust the height as needed to fit your design
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 24, right: 16),
                    width: 213,
                    height: 310,
                    padding: const EdgeInsets.all(12),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFD0D5DD)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 188,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 186,
                                    height: 173,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/yellow.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 12),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .start, // Adjust alignment as needed
                                  children: [
                                    Text(
                                      'Yellow Aesthetic Cafe',
                                      style: TextStyle(
                                        color: Color(0xFF222222),
                                        fontSize: 16,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                    Spacer(),
                                    ToggleIcon(),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '\$\$\$',
                                      style: TextStyle(
                                        color: Color(0xFF888888),
                                        fontSize: 14,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      '.',
                                      style: TextStyle(
                                        color: Color(0xFF888888),
                                        fontSize: 14,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      'Continental',
                                      style: TextStyle(
                                        color: Color(0xFF888888),
                                        fontSize: 14,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  '3.1 mi away',
                                  style: TextStyle(
                                    color: Color(0xFF888888),
                                    fontSize: 14,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Text(
                                      '4.5',
                                      style: TextStyle(
                                        color: Color(0xFF888888),
                                        fontSize: 14,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 16,
                                          height: 16,
                                          decoration: const ShapeDecoration(
                                            color: Color(0xFFFFCC1B),
                                            shape: StarBorder(
                                              points: 5,
                                              innerRadiusRatio: 0.38,
                                              pointRounding: 0,
                                              valleyRounding: 0,
                                              rotation: 0,
                                              squash: 0,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 4),
                                        Container(
                                          width: 16,
                                          height: 16,
                                          decoration: const ShapeDecoration(
                                            color: Color(0xFFFFCC1B),
                                            shape: StarBorder(
                                              points: 5,
                                              innerRadiusRatio: 0.38,
                                              pointRounding: 0,
                                              valleyRounding: 0,
                                              rotation: 0,
                                              squash: 0,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 4),
                                        Container(
                                          width: 16,
                                          height: 16,
                                          decoration: const ShapeDecoration(
                                            color: Color(0xFFFFCC1B),
                                            shape: StarBorder(
                                              points: 5,
                                              innerRadiusRatio: 0.38,
                                              pointRounding: 0,
                                              valleyRounding: 0,
                                              rotation: 0,
                                              squash: 0,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 4),
                                        Container(
                                          width: 16,
                                          height: 16,
                                          decoration: const ShapeDecoration(
                                            color: Color(0xFFFFCC1B),
                                            shape: StarBorder(
                                              points: 5,
                                              innerRadiusRatio: 0.38,
                                              pointRounding: 0,
                                              valleyRounding: 0,
                                              rotation: 0,
                                              squash: 0,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 4),
                                        Container(
                                          width: 16,
                                          height: 16,
                                          decoration: const ShapeDecoration(
                                            color: Color(0xFFD9D9D9),
                                            shape: StarBorder(
                                              points: 5,
                                              innerRadiusRatio: 0.38,
                                              pointRounding: 0,
                                              valleyRounding: 0,
                                              rotation: 0,
                                              squash: 0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 16),
                    width: 212,
                    height: 310,
                    padding: const EdgeInsets.all(12),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFD0D5DD)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 188,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 186,
                                    height: 173,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/marriam.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment
                                      .start, // Adjust alignment as needed
                                  children: [
                                    Text(
                                      'Marriam’s Kitchen',
                                      style: TextStyle(
                                        color: Color(0xFF222222),
                                        fontSize: 16,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                        height: 0,
                                      ),
                                    ),
                                    Spacer(),
                                    ToggleIcon(),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '\$\$\$',
                                      style: TextStyle(
                                        color: Color(0xFF888888),
                                        fontSize: 14,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      '.',
                                      style: TextStyle(
                                        color: Color(0xFF888888),
                                        fontSize: 14,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      'Continental',
                                      style: TextStyle(
                                        color: Color(0xFF888888),
                                        fontSize: 14,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Text(
                                  '10.1 mi away',
                                  style: TextStyle(
                                    color: Color(0xFF888888),
                                    fontSize: 14,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              '4.5',
                              style: TextStyle(
                                color: Color(0xFF888888),
                                fontSize: 14,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFFCC1B),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFFCC1B),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFFCC1B),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFFCC1B),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFD9D9D9),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 24,
              bottom: 8,
              left: 24,
            ), // Add 24px top margin and 8px bottom margin
            child: Text(
              'Cuisines',
              style: TextStyle(
                color: Color(0xFF00B288),
                fontSize: 16,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          SizedBox(
            height: 175, // Adjust based on your content
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 24, right: 16),
                    width: 128,
                    height: 155,
                    padding: const EdgeInsets.all(12),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFD0D5DD)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 102,
                              height: 102,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 102,
                                    height: 102,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/burger.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Burgers',
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 16),
                    width: 128,
                    height: 155,
                    padding: const EdgeInsets.all(12),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFD0D5DD)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 102,
                              height: 102,
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 102,
                                    height: 102,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/japanese.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Japanese',
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 16, right: 16),
                    width: 128,
                    height: 155,
                    padding: const EdgeInsets.all(12),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFD0D5DD)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 102,
                                    height: 102,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/chinese.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Chinese',
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w600,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
                top: 24,
                bottom: 8,
                left: 24), // Add 24px top margin and 8px bottom margin
            child: Text(
              'All Restaurants',
              style: TextStyle(
                color: Color(0xFF00B288),
                fontSize: 16,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          Expanded(
            // Use Expanded widget if this code is inside Column of Scaffold body
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 24, right: 24),
                    width: 342,
                    height: 340,
                    padding: const EdgeInsets.all(12),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFD0D5DD)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 285,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 286,
                                height: 200,
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 286,
                                      height: 200,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/avari.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .start, // Adjust alignment as needed
                                    children: [
                                      Text(
                                        'Avari Dine in Pizza Place',
                                        style: TextStyle(
                                          color: Color(0xFF00B288),
                                          fontSize: 16,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                      Spacer(),
                                      ToggleIcon(),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '\$\$\$',
                                        style: TextStyle(
                                          color: Color(0xFF888888),
                                          fontSize: 14,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        '.',
                                        style: TextStyle(
                                          color: Color(0xFF888888),
                                          fontSize: 14,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        'Pizza Place',
                                        style: TextStyle(
                                          color: Color(0xFF888888),
                                          fontSize: 14,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    '2.2 mi away',
                                    style: TextStyle(
                                      color: Color(0xFF888888),
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              '4.5',
                              style: TextStyle(
                                color: Color(0xFF888888),
                                fontSize: 14,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFFCC1B),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFFCC1B),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFFCC1B),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFFCC1B),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFD9D9D9),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16, left: 24, right: 24),
                    width: 342,
                    height: 340,
                    padding: const EdgeInsets.all(12),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFD0D5DD)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 285,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 318,
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 286,
                                      height: 200,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/fujiama.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .start, // Adjust alignment as needed
                                    children: [
                                      Text(
                                        'Fujiama',
                                        style: TextStyle(
                                          color: Color(0xFF00B288),
                                          fontSize: 16,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                      Spacer(),
                                      ToggleIcon(),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '\$\$\$',
                                        style: TextStyle(
                                          color: Color(0xFF888888),
                                          fontSize: 14,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        '.',
                                        style: TextStyle(
                                          color: Color(0xFF888888),
                                          fontSize: 14,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        'Japanese Food',
                                        style: TextStyle(
                                          color: Color(0xFF888888),
                                          fontSize: 14,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    '3.2 mi away',
                                    style: TextStyle(
                                      color: Color(0xFF888888),
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              '4.5',
                              style: TextStyle(
                                color: Color(0xFF888888),
                                fontSize: 14,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFFCC1B),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFFCC1B),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFFCC1B),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFFCC1B),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFD9D9D9),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16, left: 24, right: 24),
                    width: 342,
                    height: 340,
                    padding: const EdgeInsets.all(12),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFD0D5DD)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 285,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 286,
                                height: 200,
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 286,
                                      height: 477,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/spaghetti.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .start, // Adjust alignment as needed
                                    children: [
                                      Text(
                                        'Spaghetti',
                                        style: TextStyle(
                                          color: Color(0xFF00B288),
                                          fontSize: 16,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                      Spacer(),
                                      ToggleIcon(),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '\$\$\$',
                                        style: TextStyle(
                                          color: Color(0xFF888888),
                                          fontSize: 14,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        '.',
                                        style: TextStyle(
                                          color: Color(0xFF888888),
                                          fontSize: 14,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        'Chinese Food',
                                        style: TextStyle(
                                          color: Color(0xFF888888),
                                          fontSize: 14,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    '2.2 mi away',
                                    style: TextStyle(
                                      color: Color(0xFF888888),
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              '4.5',
                              style: TextStyle(
                                color: Color(0xFF888888),
                                fontSize: 14,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFFCC1B),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFFCC1B),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFFCC1B),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFFCC1B),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFD9D9D9),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16, left: 24, right: 24),
                    width: 342,
                    height: 340,
                    padding: const EdgeInsets.all(12),
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            width: 1, color: Color(0xFFD0D5DD)),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 285,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: ShapeDecoration(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 286,
                                      height: 200,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/cake.png'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 12),
                              const Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .start, // Adjust alignment as needed
                                    children: [
                                      Text(
                                        'Cake',
                                        style: TextStyle(
                                          color: Color(0xFF00B288),
                                          fontSize: 16,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w700,
                                          height: 0,
                                        ),
                                      ),
                                      Spacer(),
                                      ToggleIcon(),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '\$\$\$',
                                        style: TextStyle(
                                          color: Color(0xFF888888),
                                          fontSize: 14,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        '.',
                                        style: TextStyle(
                                          color: Color(0xFF888888),
                                          fontSize: 14,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                      SizedBox(width: 4),
                                      Text(
                                        'Chinese Food',
                                        style: TextStyle(
                                          color: Color(0xFF888888),
                                          fontSize: 14,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    '2.2 mi away',
                                    style: TextStyle(
                                      color: Color(0xFF888888),
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              '4.5',
                              style: TextStyle(
                                color: Color(0xFF888888),
                                fontSize: 14,
                                fontFamily: 'Lato',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                            const SizedBox(width: 4),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFFCC1B),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFFCC1B),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFFCC1B),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFFFCC1B),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Container(
                                  width: 16,
                                  height: 16,
                                  decoration: const ShapeDecoration(
                                    color: Color(0xFFD9D9D9),
                                    shape: StarBorder(
                                      points: 5,
                                      innerRadiusRatio: 0.38,
                                      pointRounding: 0,
                                      valleyRounding: 0,
                                      rotation: 0,
                                      squash: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
