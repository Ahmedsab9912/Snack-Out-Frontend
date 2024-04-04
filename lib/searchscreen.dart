import 'package:flutter/material.dart';

import 'searchBurger.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          width: 390,
          height: 115,
          padding: const EdgeInsets.only(
            top: 42,
            left: 20,
            right: 24,
            bottom: 10,
          ),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.800000011920929),
            border: const Border(
              left: BorderSide(color: Color(0xFFD0D5DD)),
              top: BorderSide(color: Color(0xFFD0D5DD)),
              right: BorderSide(color: Color(0xFFD0D5DD)),
              bottom: BorderSide(width: 0.50, color: Color(0xFFD0D5DD)),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
  onTap: () {
    // Navigate to the home screen when the left arrow is tapped
    Navigator.of(context).pop();
  },
  child: Container(
    width: 24,
    height: 24,
    clipBehavior: Clip.antiAlias,
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/images/arrowleftt.png'),
        fit: BoxFit.fill,
      ),
    ),
  ),
),
const SizedBox(width: 16),
Expanded(
  child: InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SearchResults(),
        ),
      );
    },
    child: Container(
      height: 44,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFCFD4DC)),
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x0C101828),
            blurRadius: 2,
            offset: Offset(0, 1),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 24,
            height: 30,
            clipBehavior: Clip.antiAlias,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/search.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
                        const SizedBox(width: 8),
                        const Expanded(
                          child: SizedBox(
                            height: 23,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    child: Text(
                                      'Search',
                                      style: TextStyle(
                                        color: Color(0xFF555555),
                                        fontSize: 14,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w500,
                                        height: 0.10,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
        SizedBox(
          width: 300,
          height: 160,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Recent Searches',
                style: TextStyle(
                  color: Color(0xFF00B288),
                  fontSize: 16,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 120,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(),
                                  child: Stack(children: [
                                    Image.asset(
                                      'assets/images/clock.png',
                                      width: 24,
                                      height: 24,
                                      fit: BoxFit.fill,
                                    ),
                                  ]),
                                ),
                                const SizedBox(width: 16),
                                const Text(
                                  'Aylanto Cafe',
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 14,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                    height: 0.09,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Container(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 10,
                                  height: 10,
                                  child: Stack(children: [
                                    Image.asset(
                                      'assets/images/cross.png',
                                      width: 24,
                                      height: 24,
                                      fit: BoxFit.fill,
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(),
                                  child: Stack(children: [
                                    Image.asset(
                                      'assets/images/clock.png',
                                      width: 24,
                                      height: 24,
                                      fit: BoxFit.fill,
                                    ),
                                  ]),
                                ),
                                const SizedBox(width: 16),
                                const Text(
                                  'Junoon Restaurant',
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 14,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                    height: 0.09,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Container(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 10,
                                  height: 10,
                                  child: Stack(children: [
                                    Image.asset(
                                      'assets/images/cross.png',
                                      width: 24,
                                      height: 24,
                                      fit: BoxFit.fill,
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: const BoxDecoration(),
                                  child: Stack(children: [
                                    Image.asset(
                                      'assets/images/clock.png',
                                      width: 24,
                                      height: 24,
                                      fit: BoxFit.fill,
                                    ),
                                  ]),
                                ),
                                const SizedBox(width: 16),
                                const Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 220,
                                      height: 05,
                                      child: Text(
                                        'Bagh Restaurant - The Ultimate',
                                        style: TextStyle(
                                          color: Color(0xFF222222),
                                          fontSize: 14,
                                          fontFamily: 'Lato',
                                          fontWeight: FontWeight.w500,
                                          height: 0.10,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 18),
                                    Text(
                                      'Desi Experience',
                                      style: TextStyle(
                                        color: Color(0xFF222222),
                                        fontSize: 14,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w500,
                                        height: 0.10,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 16),
                          Container(
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 10,
                                  height: 10,
                                  child: Stack(children: [
                                    Image.asset(
                                      'assets/images/cross.png',
                                      width: 24,
                                      height: 24,
                                      fit: BoxFit.fill,
                                    ),
                                  ]),
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
            ],
          ),
        ),
        SizedBox(
          width: 300,
          height: 334,
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Trending Searches',
                  style: TextStyle(
                    color: Color(0xFF00B288),
                    fontSize: 16,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    height: 2,
                  ),
                ),
                SizedBox(
                  width: 304,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 178,
                        height: 40,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(
                              color: const Color(0xFFD0D5DD),
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
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Avari Dine In Experience',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  height:
                                      1.3, // This is equivalent to line height
                                  letterSpacing: 0.0,
                                  color: Color(0xFF222222),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 110,
                        height: 40,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(
                              color: const Color(0xFFD0D5DD),
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
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Masalawala',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  height:
                                      1.3, // This is equivalent to line height
                                  letterSpacing: 0.0,
                                  color: Color(0xFF222222),
                                ),
                                textAlign: TextAlign.left,
                              ),
                              // Add text widget her
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 264,
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 40,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(
                              color: const Color(0xFFD0D5DD),
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
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Balcony Restaurant',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  height:
                                      1.3, // This is equivalent to line height
                                  letterSpacing: 0.0,
                                  color: Color(0xFF222222),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 102,
                        height: 40,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(
                              color: const Color(0xFFD0D5DD),
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
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Penthouse',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  height:
                                      1.3, // This is equivalent to line height
                                  letterSpacing: 0.0,
                                  color: Color(0xFF222222),
                                ),
                                textAlign: TextAlign.left,
                              ),
                              // Add text widget her
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 304,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 75,
                        height: 40,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(
                              color: const Color(0xFFD0D5DD),
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
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'MONAL',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  height:
                                      1.3, // This is equivalent to line height
                                  letterSpacing: 0.0,
                                  color: Color(0xFF222222),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 90,
                        height: 40,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(
                              color: const Color(0xFFD0D5DD),
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
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Arcadian',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  height:
                                      1.3, // This is equivalent to line height
                                  letterSpacing: 0.0,
                                  color: Color(0xFF222222),
                                ),
                                textAlign: TextAlign.left,
                              ),
                              // Add text widget her
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 112,
                        height: 40,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(
                              color: const Color(0xFFD0D5DD),
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
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'LILY By Deja',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  height:
                                      1.3, // This is equivalent to line height
                                  letterSpacing: 0.0,
                                  color: Color(0xFF222222),
                                ),
                                textAlign: TextAlign.left,
                              ),
                              // Add text widget her
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 260,
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 140,
                        height: 40,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(
                              color: const Color(0xFFD0D5DD),
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
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'London Courtyard',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  height:
                                      1.3, // This is equivalent to line height
                                  letterSpacing: 0.0,
                                  color: Color(0xFF222222),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 108,
                        height: 40,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(
                              color: const Color(0xFFD0D5DD),
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
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Dahlia Cafe',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  height:
                                      1.3, // This is equivalent to line height
                                  letterSpacing: 0.0,
                                  color: Color(0xFF222222),
                                ),
                                textAlign: TextAlign.left,
                              ),
                              // Add text widget her
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 210,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 108,
                        height: 40,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(
                              color: const Color(0xFFD0D5DD),
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
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Theatre Cafe',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  height:
                                      1.3, // This is equivalent to line height
                                  letterSpacing: 0.0,
                                  color: Color(0xFF222222),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 88,
                        height: 40,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            border: Border.all(
                              color: const Color(0xFFD0D5DD),
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
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Tuscany',
                                style: TextStyle(
                                  fontFamily: 'Lato',
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  height:
                                      1.3, // This is equivalent to line height
                                  letterSpacing: 0.0,
                                  color: Color(0xFF222222),
                                ),
                                textAlign: TextAlign.left,
                              ),
                              // Add text widget her
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
        ],
      ),
    );
  }
}
