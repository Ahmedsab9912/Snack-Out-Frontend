import 'package:flutter/material.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //implements basic material design
        body: Column(
      children: [
        Expanded(
          child: ListView(children: [
            Container(
              width: 144,
              height: 143,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              decoration: ShapeDecoration(
                color: const Color(0xFFF8F8F8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Overall Rating',
                        style: TextStyle(
                          color: Color(0xFF222222),
                          fontSize: 14,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        '4.5',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF222222),
                          fontSize: 48,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w800,
                          height: 0,
                        ),
                      ),
                      const SizedBox(height: 6),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
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
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(),
                                child: Stack(
                                  children: [
                                    Positioned(
                                      left: 0,
                                      top: 0,
                                      child: Container(
                                        width: 16,
                                        height: 16,
                                        decoration: const ShapeDecoration(
                                          color: Color(0xFF888888),
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
                                    ),
                                  ],
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
            ),
            const Padding(
              padding: EdgeInsets.only(
                  top: 24,
                  left: 24), // Add 24px top margin and 8px bottom padding
              child: Text(
                'Reviews',
                style: TextStyle(
                  color: Color(0xFF00B288),
                  fontSize: 16,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24),
              width: 342,
              height: 160,
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 0.50, color: Color(0xFFD0D5DD)),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  width: 2,
                                  strokeAlign: BorderSide.strokeAlignOutside,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 44,
                                  height: 44,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/person1.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 226,
                                child: Text(
                                  'Emily Thompson',
                                  style: TextStyle(
                                    color: Color(0xFF00B288),
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    '4.5',
                                    style: TextStyle(
                                      color: Color(0xFF222222),
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                  const SizedBox(
                    width: 342,
                    height: 76,
                    child: Text(
                      'Eataly makes booking a table a breeze! The app  intuitive interface and quick response time have made planning dinner outings a pleasure. I appreciate the seamless experience from start to finish.',
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 14,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24),
              width: 342,
              height: 160,
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 0.50, color: Color(0xFFD0D5DD)),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  width: 2,
                                  strokeAlign: BorderSide.strokeAlignOutside,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 44,
                                  height: 44,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/person2.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 226,
                                child: Text(
                                  'Alex Rodriguez',
                                  style: TextStyle(
                                    color: Color(0xFF00B288),
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    '4.5',
                                    style: TextStyle(
                                      color: Color(0xFF222222),
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                  const SizedBox(
                    width: 342,
                    height: 76,
                    child: Text(
                      'Eataly makes booking a table a breeze! The app intuitive interface and quick response time have made planning dinner outings a pleasure. I appreciate the seamless experience from start to finish.',
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 14,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24),
              width: 342,
              height: 160,
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 0.50, color: Color(0xFFD0D5DD)),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  width: 2,
                                  strokeAlign: BorderSide.strokeAlignOutside,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 44,
                                  height: 44,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/person3.png'),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 226,
                                child: Text(
                                  'Olivia Johnson',
                                  style: TextStyle(
                                    color: Color(0xFF00B288),
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    '4.5',
                                    style: TextStyle(
                                      color: Color(0xFF222222),
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                  const SizedBox(
                    width: 342,
                    height: 76,
                    child: Text(
                      'Eataly makes booking a table a breeze! The app intuitive interface and quick response time have made planning dinner outings a pleasure. I appreciate the seamless experience from start to finish.',
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 14,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24),
              width: 342,
              height: 160,
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 0.50, color: Color(0xFFD0D5DD)),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  width: 2,
                                  strokeAlign: BorderSide.strokeAlignOutside,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 44,
                                  height: 44,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/person4.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 226,
                                child: Text(
                                  'Jason Lee',
                                  style: TextStyle(
                                    color: Color(0xFF00B288),
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    '4.5',
                                    style: TextStyle(
                                      color: Color(0xFF222222),
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                  const SizedBox(
                    width: 342,
                    height: 76,
                    child: Text(
                      'Eataly makes booking a table a breeze! The app intuitive interface and quick response time have made planning dinner outings a pleasure. I appreciate the seamless experience from start to finish.',
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 14,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 24, right: 24),
              width: 342,
              height: 160,
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 0.50, color: Color(0xFFD0D5DD)),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 44,
                            height: 44,
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                  width: 2,
                                  strokeAlign: BorderSide.strokeAlignOutside,
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 44,
                                  height: 44,
                                  decoration: ShapeDecoration(
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/person5.png'),
                                      fit: BoxFit.cover,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 226,
                                child: Text(
                                  'Olivia Chen',
                                  style: TextStyle(
                                    color: Color(0xFF00B288),
                                    fontSize: 16,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    '4.5',
                                    style: TextStyle(
                                      color: Color(0xFF222222),
                                      fontSize: 14,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                  const SizedBox(
                    width: 342,
                    height: 76,
                    child: Text(
                      'Eataly makes booking a table a breeze! The app intuitive interface and quick response time have made planning dinner outings a pleasure. I appreciate the seamless experience from start to finish.',
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: 14,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
        Container(
          height: 44,
          width: 326,
          decoration: BoxDecoration(
            color: Color(0xFF00B286),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              'Make a Booking',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 16,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    ));
  }
}
// Container(
//     width: 144,
//     height: 143,
//     padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
//     decoration: ShapeDecoration(
//         color: Color(0xFFF8F8F8),
//         shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(16),
//         ),
//     ),
//     child: Row(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//             Container(
//                 child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Text(
//                             'Overall Rating',
//                             style: TextStyle(
//                                 color: Color(0xFF222222),
//                                 fontSize: 14,
//                                 fontFamily: 'Lato',
//                                 fontWeight: FontWeight.w400,
//                                 height: 0,
//                             ),
//                         ),
//                         const SizedBox(height: 6),
//                         Text(
//                             '4.5',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                                 color: Color(0xFF222222),
//                                 fontSize: 48,
//                                 fontFamily: 'Lato',
//                                 fontWeight: FontWeight.w800,
//                                 height: 0,
//                             ),
//                         ),
//                         const SizedBox(height: 6),
//                         Container(
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Container(
//                                         child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.start,
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                                 Container(
//                                                     width: 16,
//                                                     height: 16,
//                                                     decoration: ShapeDecoration(
//                                                         color: Color(0xFFFFCC1B),
//                                                         shape: StarBorder(
//                                                             points: 5,
//                                                             innerRadiusRatio: 0.38,
//                                                             pointRounding: 0,
//                                                             valleyRounding: 0,
//                                                             rotation: 0,
//                                                             squash: 0,
//                                                         ),
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Container(
//                                                     width: 16,
//                                                     height: 16,
//                                                     decoration: ShapeDecoration(
//                                                         color: Color(0xFFFFCC1B),
//                                                         shape: StarBorder(
//                                                             points: 5,
//                                                             innerRadiusRatio: 0.38,
//                                                             pointRounding: 0,
//                                                             valleyRounding: 0,
//                                                             rotation: 0,
//                                                             squash: 0,
//                                                         ),
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Container(
//                                                     width: 16,
//                                                     height: 16,
//                                                     decoration: ShapeDecoration(
//                                                         color: Color(0xFFFFCC1B),
//                                                         shape: StarBorder(
//                                                             points: 5,
//                                                             innerRadiusRatio: 0.38,
//                                                             pointRounding: 0,
//                                                             valleyRounding: 0,
//                                                             rotation: 0,
//                                                             squash: 0,
//                                                         ),
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Container(
//                                                     width: 16,
//                                                     height: 16,
//                                                     decoration: ShapeDecoration(
//                                                         color: Color(0xFFFFCC1B),
//                                                         shape: StarBorder(
//                                                             points: 5,
//                                                             innerRadiusRatio: 0.38,
//                                                             pointRounding: 0,
//                                                             valleyRounding: 0,
//                                                             rotation: 0,
//                                                             squash: 0,
//                                                         ),
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Container(
//                                                     width: 16,
//                                                     height: 16,
//                                                     clipBehavior: Clip.antiAlias,
//                                                     decoration: BoxDecoration(),
//                                                     child: Stack(
//                                                         children: [
//                                                             Positioned(
//                                                                 left: 0,
//                                                                 top: 0,
//                                                                 child: Container(
//                                                                     width: 16,
//                                                                     height: 16,
//                                                                     decoration: ShapeDecoration(
//                                                                         color: Color(0xFF888888),
//                                                                         shape: StarBorder(
//                                                                             points: 5,
//                                                                             innerRadiusRatio: 0.38,
//                                                                             pointRounding: 0,
//                                                                             valleyRounding: 0,
//                                                                             rotation: 0,
//                                                                             squash: 0,
//                                                                         ),
//                                                                     ),
//                                                                 ),
//                                                             ),
//                                                         ],
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//         ],
//     ),
// )
// Text(
//     'Reviews',
//     style: TextStyle(
//         color: Color(0xFF00B288),
//         fontSize: 16,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w700,
//         height: 0,
//     ),
// )
// Container(
//     width: 342,
//     height: 160,
//     padding: const EdgeInsets.symmetric(vertical: 16),
//     decoration: BoxDecoration(
//         border: Border.only(
//             left: BorderSide(color: Color(0xFFD0D5DD)),
//             top: BorderSide(color: Color(0xFFD0D5DD)),
//             right: BorderSide(color: Color(0xFFD0D5DD)),
//             bottom: BorderSide(width: 0.50, color: Color(0xFFD0D5DD)),
//         ),
//     ),
//     child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//             Container(
//                 child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Container(
//                                         width: 44,
//                                         height: 44,
//                                         clipBehavior: Clip.antiAlias,
//                                         decoration: ShapeDecoration(
//                                             shape: RoundedRectangleBorder(
//                                                 side: BorderSide(
//                                                     width: 2,
//                                                     strokeAlign: BorderSide.strokeAlignOutside,
//                                                     color: Colors.white,
//                                                 ),
//                                                 borderRadius: BorderRadius.circular(6),
//                                             ),
//                                         ),
//                                         child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.center,
//                                             crossAxisAlignment: CrossAxisAlignment.center,
//                                             children: [
//                                                 Container(
//                                                     width: 44,
//                                                     height: 44,
//                                                     decoration: ShapeDecoration(
//                                                         image: DecorationImage(
//                                                             image: NetworkImage("https://via.placeholder.com/44x44"),
//                                                             fit: BoxFit.fill,
//                                                         ),
//                                                         shape: RoundedRectangleBorder(
//                                                             borderRadius: BorderRadius.circular(24),
//                                                         ),
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                     const SizedBox(width: 16),
//                                     Container(
//                                         child: Column(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.center,
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                                 SizedBox(
//                                                     width: 226,
//                                                     child: Text(
//                                                         'Emily Thompson',
//                                                         style: TextStyle(
//                                                             color: Color(0xFF00B288),
//                                                             fontSize: 16,
//                                                             fontFamily: 'Lato',
//                                                             fontWeight: FontWeight.w700,
//                                                             height: 0,
//                                                         ),
//                                                     ),
//                                                 ),
//                                                 const SizedBox(height: 4),
//                                                 Container(
//                                                     child: Row(
//                                                         mainAxisSize: MainAxisSize.min,
//                                                         mainAxisAlignment: MainAxisAlignment.start,
//                                                         crossAxisAlignment: CrossAxisAlignment.center,
//                                                         children: [
//                                                             Text(
//                                                                 '4.5',
//                                                                 style: TextStyle(
//                                                                     color: Color(0xFF222222),
//                                                                     fontSize: 14,
//                                                                     fontFamily: 'Lato',
//                                                                     fontWeight: FontWeight.w700,
//                                                                     height: 0,
//                                                                 ),
//                                                             ),
//                                                             const SizedBox(width: 8),
//                                                             Container(
//                                                                 child: Row(
//                                                                     mainAxisSize: MainAxisSize.min,
//                                                                     mainAxisAlignment: MainAxisAlignment.start,
//                                                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                                                     children: [
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFFFCC1B),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                         const SizedBox(width: 4),
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFFFCC1B),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                         const SizedBox(width: 4),
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFFFCC1B),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                         const SizedBox(width: 4),
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFFFCC1B),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                         const SizedBox(width: 4),
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFD9D9D9),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                     ],
//                                                                 ),
//                                                             ),
//                                                         ],
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//             SizedBox(
//                 width: 342,
//                 child: Text(
//                     'Eataly makes booking a table a breeze! The app's intuitive interface and quick response time have made planning dinner outings a pleasure. I appreciate the seamless experience from start to finish.',
//                     style: TextStyle(
//                         color: Color(0xFF222222),
//                         fontSize: 14,
//                         fontFamily: 'Lato',
//                         fontWeight: FontWeight.w400,
//                         height: 0.10,
//                     ),
//                 ),
//             ),
//         ],
//     ),
// )
// Container(
//     width: 342,
//     height: 160,
//     padding: const EdgeInsets.symmetric(vertical: 16),
//     decoration: BoxDecoration(
//         border: Border.only(
//             left: BorderSide(color: Color(0xFFD0D5DD)),
//             top: BorderSide(color: Color(0xFFD0D5DD)),
//             right: BorderSide(color: Color(0xFFD0D5DD)),
//             bottom: BorderSide(width: 0.50, color: Color(0xFFD0D5DD)),
//         ),
//     ),
//     child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//             Container(
//                 child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Container(
//                                         width: 44,
//                                         height: 44,
//                                         clipBehavior: Clip.antiAlias,
//                                         decoration: ShapeDecoration(
//                                             shape: RoundedRectangleBorder(
//                                                 side: BorderSide(
//                                                     width: 2,
//                                                     strokeAlign: BorderSide.strokeAlignOutside,
//                                                     color: Colors.white,
//                                                 ),
//                                                 borderRadius: BorderRadius.circular(6),
//                                             ),
//                                         ),
//                                         child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.center,
//                                             crossAxisAlignment: CrossAxisAlignment.center,
//                                             children: [
//                                                 Container(
//                                                     width: 44,
//                                                     height: 44,
//                                                     decoration: ShapeDecoration(
//                                                         image: DecorationImage(
//                                                             image: NetworkImage("https://via.placeholder.com/44x44"),
//                                                             fit: BoxFit.cover,
//                                                         ),
//                                                         shape: RoundedRectangleBorder(
//                                                             borderRadius: BorderRadius.circular(24),
//                                                         ),
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                     const SizedBox(width: 16),
//                                     Container(
//                                         child: Column(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.center,
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                                 SizedBox(
//                                                     width: 226,
//                                                     child: Text(
//                                                         'Alex Rodriguez',
//                                                         style: TextStyle(
//                                                             color: Color(0xFF00B288),
//                                                             fontSize: 16,
//                                                             fontFamily: 'Lato',
//                                                             fontWeight: FontWeight.w700,
//                                                             height: 0,
//                                                         ),
//                                                     ),
//                                                 ),
//                                                 const SizedBox(height: 4),
//                                                 Container(
//                                                     child: Row(
//                                                         mainAxisSize: MainAxisSize.min,
//                                                         mainAxisAlignment: MainAxisAlignment.start,
//                                                         crossAxisAlignment: CrossAxisAlignment.center,
//                                                         children: [
//                                                             Text(
//                                                                 '4.5',
//                                                                 style: TextStyle(
//                                                                     color: Color(0xFF222222),
//                                                                     fontSize: 14,
//                                                                     fontFamily: 'Lato',
//                                                                     fontWeight: FontWeight.w700,
//                                                                     height: 0,
//                                                                 ),
//                                                             ),
//                                                             const SizedBox(width: 8),
//                                                             Container(
//                                                                 child: Row(
//                                                                     mainAxisSize: MainAxisSize.min,
//                                                                     mainAxisAlignment: MainAxisAlignment.start,
//                                                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                                                     children: [
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFFFCC1B),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                         const SizedBox(width: 4),
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFFFCC1B),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                         const SizedBox(width: 4),
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFFFCC1B),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                         const SizedBox(width: 4),
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFFFCC1B),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                         const SizedBox(width: 4),
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFD9D9D9),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                     ],
//                                                                 ),
//                                                             ),
//                                                         ],
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//             SizedBox(
//                 width: 342,
//                 child: Text(
//                     'Eataly makes booking a table a breeze! The app's intuitive interface and quick response time have made planning dinner outings a pleasure. I appreciate the seamless experience from start to finish.',
//                     style: TextStyle(
//                         color: Color(0xFF222222),
//                         fontSize: 14,
//                         fontFamily: 'Lato',
//                         fontWeight: FontWeight.w400,
//                         height: 0.10,
//                     ),
//                 ),
//             ),
//         ],
//     ),
// )
// Container(
//     width: 342,
//     height: 160,
//     padding: const EdgeInsets.symmetric(vertical: 16),
//     decoration: BoxDecoration(
//         border: Border.only(
//             left: BorderSide(color: Color(0xFFD0D5DD)),
//             top: BorderSide(color: Color(0xFFD0D5DD)),
//             right: BorderSide(color: Color(0xFFD0D5DD)),
//             bottom: BorderSide(width: 0.50, color: Color(0xFFD0D5DD)),
//         ),
//     ),
//     child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//             Container(
//                 child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Container(
//                                         width: 44,
//                                         height: 44,
//                                         clipBehavior: Clip.antiAlias,
//                                         decoration: ShapeDecoration(
//                                             shape: RoundedRectangleBorder(
//                                                 side: BorderSide(
//                                                     width: 2,
//                                                     strokeAlign: BorderSide.strokeAlignOutside,
//                                                     color: Colors.white,
//                                                 ),
//                                                 borderRadius: BorderRadius.circular(6),
//                                             ),
//                                         ),
//                                         child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.center,
//                                             crossAxisAlignment: CrossAxisAlignment.center,
//                                             children: [
//                                                 Container(
//                                                     width: 44,
//                                                     height: 44,
//                                                     decoration: ShapeDecoration(
//                                                         image: DecorationImage(
//                                                             image: NetworkImage("https://via.placeholder.com/44x44"),
//                                                             fit: BoxFit.fill,
//                                                         ),
//                                                         shape: RoundedRectangleBorder(
//                                                             borderRadius: BorderRadius.circular(24),
//                                                         ),
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                     const SizedBox(width: 16),
//                                     Container(
//                                         child: Column(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.center,
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                                 SizedBox(
//                                                     width: 226,
//                                                     child: Text(
//                                                         'Olivia Johnson',
//                                                         style: TextStyle(
//                                                             color: Color(0xFF00B288),
//                                                             fontSize: 16,
//                                                             fontFamily: 'Lato',
//                                                             fontWeight: FontWeight.w700,
//                                                             height: 0,
//                                                         ),
//                                                     ),
//                                                 ),
//                                                 const SizedBox(height: 4),
//                                                 Container(
//                                                     child: Row(
//                                                         mainAxisSize: MainAxisSize.min,
//                                                         mainAxisAlignment: MainAxisAlignment.start,
//                                                         crossAxisAlignment: CrossAxisAlignment.center,
//                                                         children: [
//                                                             Text(
//                                                                 '4.5',
//                                                                 style: TextStyle(
//                                                                     color: Color(0xFF222222),
//                                                                     fontSize: 14,
//                                                                     fontFamily: 'Lato',
//                                                                     fontWeight: FontWeight.w700,
//                                                                     height: 0,
//                                                                 ),
//                                                             ),
//                                                             const SizedBox(width: 8),
//                                                             Container(
//                                                                 child: Row(
//                                                                     mainAxisSize: MainAxisSize.min,
//                                                                     mainAxisAlignment: MainAxisAlignment.start,
//                                                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                                                     children: [
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFFFCC1B),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                         const SizedBox(width: 4),
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFFFCC1B),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                         const SizedBox(width: 4),
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFFFCC1B),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                         const SizedBox(width: 4),
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFFFCC1B),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                         const SizedBox(width: 4),
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFD9D9D9),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                     ],
//                                                                 ),
//                                                             ),
//                                                         ],
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//             SizedBox(
//                 width: 342,
//                 child: Text(
//                     'Eataly makes booking a table a breeze! The app's intuitive interface and quick response time have made planning dinner outings a pleasure. I appreciate the seamless experience from start to finish.',
//                     style: TextStyle(
//                         color: Color(0xFF222222),
//                         fontSize: 14,
//                         fontFamily: 'Lato',
//                         fontWeight: FontWeight.w400,
//                         height: 0.10,
//                     ),
//                 ),
//             ),
//         ],
//     ),
// )
// Container(
//     width: 342,
//     height: 160,
//     padding: const EdgeInsets.symmetric(vertical: 16),
//     decoration: BoxDecoration(
//         border: Border.only(
//             left: BorderSide(color: Color(0xFFD0D5DD)),
//             top: BorderSide(color: Color(0xFFD0D5DD)),
//             right: BorderSide(color: Color(0xFFD0D5DD)),
//             bottom: BorderSide(width: 0.50, color: Color(0xFFD0D5DD)),
//         ),
//     ),
//     child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//             Container(
//                 child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Container(
//                                         width: 44,
//                                         height: 44,
//                                         clipBehavior: Clip.antiAlias,
//                                         decoration: ShapeDecoration(
//                                             shape: RoundedRectangleBorder(
//                                                 side: BorderSide(
//                                                     width: 2,
//                                                     strokeAlign: BorderSide.strokeAlignOutside,
//                                                     color: Colors.white,
//                                                 ),
//                                                 borderRadius: BorderRadius.circular(6),
//                                             ),
//                                         ),
//                                         child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.center,
//                                             crossAxisAlignment: CrossAxisAlignment.center,
//                                             children: [
//                                                 Container(
//                                                     width: 44,
//                                                     height: 44,
//                                                     decoration: ShapeDecoration(
//                                                         image: DecorationImage(
//                                                             image: NetworkImage("https://via.placeholder.com/44x44"),
//                                                             fit: BoxFit.cover,
//                                                         ),
//                                                         shape: RoundedRectangleBorder(
//                                                             borderRadius: BorderRadius.circular(24),
//                                                         ),
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                     const SizedBox(width: 16),
//                                     Container(
//                                         child: Column(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.center,
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                                 SizedBox(
//                                                     width: 226,
//                                                     child: Text(
//                                                         'Jason Lee',
//                                                         style: TextStyle(
//                                                             color: Color(0xFF00B288),
//                                                             fontSize: 16,
//                                                             fontFamily: 'Lato',
//                                                             fontWeight: FontWeight.w700,
//                                                             height: 0,
//                                                         ),
//                                                     ),
//                                                 ),
//                                                 const SizedBox(height: 4),
//                                                 Container(
//                                                     child: Row(
//                                                         mainAxisSize: MainAxisSize.min,
//                                                         mainAxisAlignment: MainAxisAlignment.start,
//                                                         crossAxisAlignment: CrossAxisAlignment.center,
//                                                         children: [
//                                                             Text(
//                                                                 '4.5',
//                                                                 style: TextStyle(
//                                                                     color: Color(0xFF222222),
//                                                                     fontSize: 14,
//                                                                     fontFamily: 'Lato',
//                                                                     fontWeight: FontWeight.w700,
//                                                                     height: 0,
//                                                                 ),
//                                                             ),
//                                                             const SizedBox(width: 8),
//                                                             Container(
//                                                                 child: Row(
//                                                                     mainAxisSize: MainAxisSize.min,
//                                                                     mainAxisAlignment: MainAxisAlignment.start,
//                                                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                                                     children: [
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFFFCC1B),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                         const SizedBox(width: 4),
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFFFCC1B),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                         const SizedBox(width: 4),
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFFFCC1B),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                         const SizedBox(width: 4),
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFFFCC1B),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                         const SizedBox(width: 4),
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFD9D9D9),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                     ],
//                                                                 ),
//                                                             ),
//                                                         ],
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//             SizedBox(
//                 width: 342,
//                 child: Text(
//                     'Eataly makes booking a table a breeze! The app's intuitive interface and quick response time have made planning dinner outings a pleasure. I appreciate the seamless experience from start to finish.',
//                     style: TextStyle(
//                         color: Color(0xFF222222),
//                         fontSize: 14,
//                         fontFamily: 'Lato',
//                         fontWeight: FontWeight.w400,
//                         height: 0.10,
//                     ),
//                 ),
//             ),
//         ],
//     ),
// )
// Container(
//     width: 342,
//     height: 160,
//     padding: const EdgeInsets.symmetric(vertical: 16),
//     decoration: BoxDecoration(
//         border: Border.only(
//             left: BorderSide(color: Color(0xFFD0D5DD)),
//             top: BorderSide(color: Color(0xFFD0D5DD)),
//             right: BorderSide(color: Color(0xFFD0D5DD)),
//             bottom: BorderSide(width: 0.50, color: Color(0xFFD0D5DD)),
//         ),
//     ),
//     child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//             Container(
//                 child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Container(
//                                         width: 44,
//                                         height: 44,
//                                         clipBehavior: Clip.antiAlias,
//                                         decoration: ShapeDecoration(
//                                             shape: RoundedRectangleBorder(
//                                                 side: BorderSide(
//                                                     width: 2,
//                                                     strokeAlign: BorderSide.strokeAlignOutside,
//                                                     color: Colors.white,
//                                                 ),
//                                                 borderRadius: BorderRadius.circular(6),
//                                             ),
//                                         ),
//                                         child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.center,
//                                             crossAxisAlignment: CrossAxisAlignment.center,
//                                             children: [
//                                                 Container(
//                                                     width: 44,
//                                                     height: 44,
//                                                     decoration: ShapeDecoration(
//                                                         image: DecorationImage(
//                                                             image: NetworkImage("https://via.placeholder.com/44x44"),
//                                                             fit: BoxFit.cover,
//                                                         ),
//                                                         shape: RoundedRectangleBorder(
//                                                             borderRadius: BorderRadius.circular(24),
//                                                         ),
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                     const SizedBox(width: 16),
//                                     Container(
//                                         child: Column(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.center,
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                                 SizedBox(
//                                                     width: 226,
//                                                     child: Text(
//                                                         'Olivia Chen',
//                                                         style: TextStyle(
//                                                             color: Color(0xFF00B288),
//                                                             fontSize: 16,
//                                                             fontFamily: 'Lato',
//                                                             fontWeight: FontWeight.w700,
//                                                             height: 0,
//                                                         ),
//                                                     ),
//                                                 ),
//                                                 const SizedBox(height: 4),
//                                                 Container(
//                                                     child: Row(
//                                                         mainAxisSize: MainAxisSize.min,
//                                                         mainAxisAlignment: MainAxisAlignment.start,
//                                                         crossAxisAlignment: CrossAxisAlignment.center,
//                                                         children: [
//                                                             Text(
//                                                                 '4.5',
//                                                                 style: TextStyle(
//                                                                     color: Color(0xFF222222),
//                                                                     fontSize: 14,
//                                                                     fontFamily: 'Lato',
//                                                                     fontWeight: FontWeight.w700,
//                                                                     height: 0,
//                                                                 ),
//                                                             ),
//                                                             const SizedBox(width: 8),
//                                                             Container(
//                                                                 child: Row(
//                                                                     mainAxisSize: MainAxisSize.min,
//                                                                     mainAxisAlignment: MainAxisAlignment.start,
//                                                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                                                     children: [
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFFFCC1B),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                         const SizedBox(width: 4),
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFFFCC1B),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                         const SizedBox(width: 4),
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFFFCC1B),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                         const SizedBox(width: 4),
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFFFCC1B),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                         const SizedBox(width: 4),
//                                                                         Container(
//                                                                             width: 16,
//                                                                             height: 16,
//                                                                             decoration: ShapeDecoration(
//                                                                                 color: Color(0xFFD9D9D9),
//                                                                                 shape: StarBorder(
//                                                                                     points: 5,
//                                                                                     innerRadiusRatio: 0.38,
//                                                                                     pointRounding: 0,
//                                                                                     valleyRounding: 0,
//                                                                                     rotation: 0,
//                                                                                     squash: 0,
//                                                                                 ),
//                                                                             ),
//                                                                         ),
//                                                                     ],
//                                                                 ),
//                                                             ),
//                                                         ],
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//             SizedBox(
//                 width: 342,
//                 child: Text(
//                     'Eataly makes booking a table a breeze! The app's intuitive interface and quick response time have made planning dinner outings a pleasure. I appreciate the seamless experience from start to finish.',
//                     style: TextStyle(
//                         color: Color(0xFF222222),
//                         fontSize: 14,
//                         fontFamily: 'Lato',
//                         fontWeight: FontWeight.w400,
//                         height: 0.10,
//                     ),
//                 ),
//             ),
//         ],
//     ),
// )
