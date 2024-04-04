import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ToggleIcon extends StatefulWidget {
  const ToggleIcon({super.key});

  @override
  // ignore: library_private_types_in_public_api
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

class SearchResults extends StatelessWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //implements basic material design
      body: ListView(
        children: [
          Container(
            //first container
            width: MediaQuery.of(context)
                .size
                .width, // This will match the screen width
            height: 104,
            padding: const EdgeInsets.only(
              top: 32,
              left: 24,
              right: 24,
              bottom:24,
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
            mainAxisAlignment:
                MainAxisAlignment.start, // Align items to the start of the row
            children: [GestureDetector(
  onTap: () {
    // Navigate to the search screen when the left arrow is tapped
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
              Container(
                width: 280,
                height: 43,
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
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
                      ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 23,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Expanded(
                              child: SizedBox(
                                child: Text(
                                  'Burger',
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 14,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w500,
                                    height: 0.10,
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Image.asset(
                                'assets/images/crosssmall.png', // Replace with your image asset path
                              width: 20,
                              height: 20,
                              fit: BoxFit.cover, // Adjust the fit as needed
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
          const Padding(
            padding: EdgeInsets.only(top: 24, bottom: 8, left: 24),
            child: Text(
            'About 270 Search Results',
            style: TextStyle(
              color: Color(0xFF00C572),
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
            height: 340,
            padding: const EdgeInsets.all(12),
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Color(0xFFD0D5DD)),
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
                                  image:
                                      AssetImage('assets/images/burger1.png'),
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
                            'Smash Burgers - Gulberg',
                            style: TextStyle(
                              color: Color(0xFF00C572),
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
                                'Burger Place',
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
                side: const BorderSide(width: 1, color: Color(0xFFD0D5DD)),
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
                                  image:
                                      AssetImage('assets/images/burger2.png'),
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
                            'Burger Lab - MM Alam',
                            style: TextStyle(
                              color: Color(0xFF00C572),
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
                                'Burger Place',
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
                            '1.4 mi away',
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
                side: const BorderSide(width: 1, color: Color(0xFFD0D5DD)),
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 286,
                              height: 200,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/burger3.png'),
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
                            'Crazy Burgers',
                            style: TextStyle(
                              color: Color(0xFF00C572),
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
                                'Burger Place',
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
                            '7.5 mi away',
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
                side: const BorderSide(width: 1, color: Color(0xFFD0D5DD)),
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
                                  image:
                                      AssetImage('assets/images/burger4.png'),
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
                            'Tayto Cafe',
                            style: TextStyle(
                              color: Color(0xFF00C572),
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
                                'Burger Place',
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
                            '3.5 mi away',
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
                side: const BorderSide(width: 1, color: Color(0xFFD0D5DD)),
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
                                  image:
                                      AssetImage('assets/images/burger5.png'),
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
                            'Dark Aesthetic Burgers',
                            style: TextStyle(
                              color: Color(0xFF00C572),
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
                                'Burger Place',
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
                side: const BorderSide(width: 1, color: Color(0xFFD0D5DD)),
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
                                  image:
                                      AssetImage('assets/images/burger6.png'),
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
                            'Dark Aesthetic Burgers',
                            style: TextStyle(
                              color: Color(0xFF00C572),
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
                                'Burger Place',
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
        ],
      ),
    );
  }
}
// Container(
//     width: 24,
//     height: 24,
//     clipBehavior: Clip.antiAlias,
//     decoration: BoxDecoration(),
//     child: Stack(children: [
//     ,
//     ]),
// )
// Container(
//     width: 306,
//     height: 43,
//     padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
//     clipBehavior: Clip.antiAlias,
//     decoration: ShapeDecoration(
//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//             side: BorderSide(width: 1, color: Color(0xFFCFD4DC)),
//             borderRadius: BorderRadius.circular(12),
//         ),
//         shadows: [
//             BoxShadow(
//                 color: Color(0x0C101828),
//                 blurRadius: 2,
//                 offset: Offset(0, 1),
//                 spreadRadius: 0,
//             )
//         ],
//     ),
//     child: Row(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//             Expanded(
//                 child: Container(
//                     height: 23,
//                     child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                             Expanded(
//                                 child: SizedBox(
//                                     child: Text(
//                                         'Burger',
//                                         style: TextStyle(
//                                             color: Color(0xFF222222),
//                                             fontSize: 14,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w500,
//                                             height: 0.10,
//                                         ),
//                                     ),
//                                 ),
//                             ),
//                             const SizedBox(width: 8),
//                             Container(
//                                 padding: const EdgeInsets.all(4),
//                                 child: Row(
//                                     mainAxisSize: MainAxisSize.min,
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                         Container(
//                                             width: 10,
//                                             height: 10,
//                                             child: Stack(children: [
//                                             ,
//                                             ]),
//                                         ),
//                                     ],
//                                 ),
//                             ),
//                         ],
//                     ),
//                 ),
//             ),
//         ],
//     ),
// )
// Text(
//     'Burger',
//     style: TextStyle(
//         color: Color(0xFF222222),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w500,
//         height: 0.10,
//     ),
// )
// Text(
//     'About 270 Search Results',
//     style: TextStyle(
//         color: Color(0xFF00C572),
//         fontSize: 16,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w700,
//         height: 0,
//     ),
// )
// Container(
//     width: 342,
//     height: 332,
//     padding: const EdgeInsets.all(12),
//     clipBehavior: Clip.antiAlias,
//     decoration: ShapeDecoration(
//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//             side: BorderSide(width: 1, color: Color(0xFFD0D5DD)),
//             borderRadius: BorderRadius.circular(16),
//         ),
//     ),
//     child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//             Container(
//                 width: double.infinity,
//                 height: 281,
//                 child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             width: 318,
//                             clipBehavior: Clip.antiAlias,
//                             decoration: ShapeDecoration(
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                             ),
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Container(
//                                         width: 318,
//                                         height: 476,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: NetworkImage("https://via.placeholder.com/318x476"),
//                                                 fit: BoxFit.fill,
//                                             ),
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                         const SizedBox(height: 12),
//                         Container(
//                             child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                     Text(
//                                         'Smash Burgers - Gulberg',
//                                         style: TextStyle(
//                                             color: Color(0xFF00C572),
//                                             fontSize: 16,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w700,
//                                             height: 0,
//                                         ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Container(
//                                         child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.start,
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                                 Text(
//                                                     '\$\$\$',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Text(
//                                                     '.',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Text(
//                                                     'Burger Place',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                         '2.2 mi away',
//                                         style: TextStyle(
//                                             color: Color(0xFF888888),
//                                             fontSize: 14,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w400,
//                                             height: 0,
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//             const SizedBox(height: 10),
//             Container(
//                 child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                         Text(
//                             '4.5',
//                             style: TextStyle(
//                                 color: Color(0xFF888888),
//                                 fontSize: 14,
//                                 fontFamily: 'Lato',
//                                 fontWeight: FontWeight.w400,
//                                 height: 0,
//                             ),
//                         ),
//                         const SizedBox(width: 4),
//                         Container(
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFD9D9D9),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
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
//     'Smash Burgers - Gulberg',
//     style: TextStyle(
//         color: Color(0xFF00C572),
//         fontSize: 16,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w700,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '\$\$\$',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '.',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     'Burger Place',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '2.2 mi away',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '4.5',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// Container(
//     width: 342,
//     height: 332,
//     padding: const EdgeInsets.all(12),
//     clipBehavior: Clip.antiAlias,
//     decoration: ShapeDecoration(
//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//             side: BorderSide(width: 1, color: Color(0xFFD0D5DD)),
//             borderRadius: BorderRadius.circular(16),
//         ),
//     ),
//     child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//             Container(
//                 width: double.infinity,
//                 height: 281,
//                 child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             width: 318,
//                             clipBehavior: Clip.antiAlias,
//                             decoration: ShapeDecoration(
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                             ),
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Container(
//                                         width: 318,
//                                         height: 398,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: NetworkImage("https://via.placeholder.com/318x398"),
//                                                 fit: BoxFit.fill,
//                                             ),
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                         const SizedBox(height: 12),
//                         Container(
//                             child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                     Text(
//                                         'Burger Lab - MM Alam',
//                                         style: TextStyle(
//                                             color: Color(0xFF00C572),
//                                             fontSize: 16,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w700,
//                                             height: 0,
//                                         ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Container(
//                                         child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.start,
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                                 Text(
//                                                     '\$\$\$',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Text(
//                                                     '.',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Text(
//                                                     'Burger Place',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                         '1.4 mi away',
//                                         style: TextStyle(
//                                             color: Color(0xFF888888),
//                                             fontSize: 14,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w400,
//                                             height: 0,
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//             const SizedBox(height: 10),
//             Container(
//                 child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                         Text(
//                             '4.5',
//                             style: TextStyle(
//                                 color: Color(0xFF888888),
//                                 fontSize: 14,
//                                 fontFamily: 'Lato',
//                                 fontWeight: FontWeight.w400,
//                                 height: 0,
//                             ),
//                         ),
//                         const SizedBox(width: 4),
//                         Container(
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFD9D9D9),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
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
//     'Burger Lab - MM Alam',
//     style: TextStyle(
//         color: Color(0xFF00C572),
//         fontSize: 16,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w700,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '\$\$\$',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '.',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     'Burger Place',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '1.4 mi away',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '4.5',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// Container(
//     width: 342,
//     height: 332,
//     padding: const EdgeInsets.all(12),
//     clipBehavior: Clip.antiAlias,
//     decoration: ShapeDecoration(
//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//             side: BorderSide(width: 1, color: Color(0xFFD0D5DD)),
//             borderRadius: BorderRadius.circular(16),
//         ),
//     ),
//     child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//             Container(
//                 width: double.infinity,
//                 height: 281,
//                 child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             clipBehavior: Clip.antiAlias,
//                             decoration: ShapeDecoration(
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                             ),
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Container(
//                                         width: 371,
//                                         height: 372,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: NetworkImage("https://via.placeholder.com/371x372"),
//                                                 fit: BoxFit.fill,
//                                             ),
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                         const SizedBox(height: 12),
//                         Container(
//                             child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                     Text(
//                                         'Crazy Burgers',
//                                         style: TextStyle(
//                                             color: Color(0xFF00C572),
//                                             fontSize: 16,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w700,
//                                             height: 0,
//                                         ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Container(
//                                         child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.start,
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                                 Text(
//                                                     '\$\$\$',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Text(
//                                                     '.',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Text(
//                                                     'Burger Place',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                         '7.5 mi away',
//                                         style: TextStyle(
//                                             color: Color(0xFF888888),
//                                             fontSize: 14,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w400,
//                                             height: 0,
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//             const SizedBox(height: 10),
//             Container(
//                 child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                         Text(
//                             '4.5',
//                             style: TextStyle(
//                                 color: Color(0xFF888888),
//                                 fontSize: 14,
//                                 fontFamily: 'Lato',
//                                 fontWeight: FontWeight.w400,
//                                 height: 0,
//                             ),
//                         ),
//                         const SizedBox(width: 4),
//                         Container(
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFD9D9D9),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
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
//     'Crazy Burgers',
//     style: TextStyle(
//         color: Color(0xFF00C572),
//         fontSize: 16,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w700,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '\$\$\$',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '.',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     'Burger Place',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '7.5 mi away',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '4.5',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// Container(
//     width: 342,
//     height: 332,
//     padding: const EdgeInsets.all(12),
//     clipBehavior: Clip.antiAlias,
//     decoration: ShapeDecoration(
//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//             side: BorderSide(width: 1, color: Color(0xFFD0D5DD)),
//             borderRadius: BorderRadius.circular(16),
//         ),
//     ),
//     child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//             Container(
//                 width: double.infinity,
//                 height: 281,
//                 child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             width: 318,
//                             clipBehavior: Clip.antiAlias,
//                             decoration: ShapeDecoration(
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                             ),
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Container(
//                                         width: 318,
//                                         height: 478,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: NetworkImage("https://via.placeholder.com/318x478"),
//                                                 fit: BoxFit.fill,
//                                             ),
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                         const SizedBox(height: 12),
//                         Container(
//                             child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                     Text(
//                                         'Tayto Cafe',
//                                         style: TextStyle(
//                                             color: Color(0xFF00C572),
//                                             fontSize: 16,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w700,
//                                             height: 0,
//                                         ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Container(
//                                         child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.start,
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                                 Text(
//                                                     '\$\$\$',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Text(
//                                                     '.',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Text(
//                                                     'Burger Place',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                         '3.5 mi away',
//                                         style: TextStyle(
//                                             color: Color(0xFF888888),
//                                             fontSize: 14,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w400,
//                                             height: 0,
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//             const SizedBox(height: 10),
//             Container(
//                 child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                         Text(
//                             '4.5',
//                             style: TextStyle(
//                                 color: Color(0xFF888888),
//                                 fontSize: 14,
//                                 fontFamily: 'Lato',
//                                 fontWeight: FontWeight.w400,
//                                 height: 0,
//                             ),
//                         ),
//                         const SizedBox(width: 4),
//                         Container(
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFD9D9D9),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
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
//     'Tayto Cafe',
//     style: TextStyle(
//         color: Color(0xFF00C572),
//         fontSize: 16,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w700,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '\$\$\$',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '.',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     'Burger Place',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '3.5 mi away',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '4.5',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// Container(
//     width: 342,
//     height: 332,
//     padding: const EdgeInsets.all(12),
//     clipBehavior: Clip.antiAlias,
//     decoration: ShapeDecoration(
//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//             side: BorderSide(width: 1, color: Color(0xFFD0D5DD)),
//             borderRadius: BorderRadius.circular(16),
//         ),
//     ),
//     child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//             Container(
//                 width: double.infinity,
//                 height: 281,
//                 child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             width: 318,
//                             clipBehavior: Clip.antiAlias,
//                             decoration: ShapeDecoration(
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                             ),
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Container(
//                                         width: 318,
//                                         height: 318,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: NetworkImage("https://via.placeholder.com/318x318"),
//                                                 fit: BoxFit.fill,
//                                             ),
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                         const SizedBox(height: 12),
//                         Container(
//                             child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                     Text(
//                                         'Dark Aesthetic Burgers',
//                                         style: TextStyle(
//                                             color: Color(0xFF00C572),
//                                             fontSize: 16,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w700,
//                                             height: 0,
//                                         ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Container(
//                                         child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.start,
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                                 Text(
//                                                     '\$\$\$',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Text(
//                                                     '.',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Text(
//                                                     'Burger Place',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                         '10.1 mi away',
//                                         style: TextStyle(
//                                             color: Color(0xFF888888),
//                                             fontSize: 14,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w400,
//                                             height: 0,
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//             const SizedBox(height: 10),
//             Container(
//                 child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                         Text(
//                             '4.5',
//                             style: TextStyle(
//                                 color: Color(0xFF888888),
//                                 fontSize: 14,
//                                 fontFamily: 'Lato',
//                                 fontWeight: FontWeight.w400,
//                                 height: 0,
//                             ),
//                         ),
//                         const SizedBox(width: 4),
//                         Container(
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFD9D9D9),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
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
//     'Dark Aesthetic Burgers',
//     style: TextStyle(
//         color: Color(0xFF00C572),
//         fontSize: 16,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w700,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '\$\$\$',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '.',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     'Burger Place',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '10.1 mi away',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '4.5',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// Container(
//     width: 342,
//     height: 332,
//     padding: const EdgeInsets.all(12),
//     clipBehavior: Clip.antiAlias,
//     decoration: ShapeDecoration(
//         color: Colors.white,
//         shape: RoundedRectangleBorder(
//             side: BorderSide(width: 1, color: Color(0xFFD0D5DD)),
//             borderRadius: BorderRadius.circular(16),
//         ),
//     ),
//     child: Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//             Container(
//                 width: double.infinity,
//                 height: 281,
//                 child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                         Container(
//                             width: 318,
//                             clipBehavior: Clip.antiAlias,
//                             decoration: ShapeDecoration(
//                                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                             ),
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 crossAxisAlignment: CrossAxisAlignment.center,
//                                 children: [
//                                     Container(
//                                         width: 375,
//                                         height: 250,
//                                         decoration: BoxDecoration(
//                                             image: DecorationImage(
//                                                 image: NetworkImage("https://via.placeholder.com/375x250"),
//                                                 fit: BoxFit.fill,
//                                             ),
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                         const SizedBox(height: 12),
//                         Container(
//                             child: Column(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                     Text(
//                                         'Dark Aesthetic Burgers',
//                                         style: TextStyle(
//                                             color: Color(0xFF00C572),
//                                             fontSize: 16,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w700,
//                                             height: 0,
//                                         ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Container(
//                                         child: Row(
//                                             mainAxisSize: MainAxisSize.min,
//                                             mainAxisAlignment: MainAxisAlignment.start,
//                                             crossAxisAlignment: CrossAxisAlignment.start,
//                                             children: [
//                                                 Text(
//                                                     '\$\$\$',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Text(
//                                                     '.',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                                 const SizedBox(width: 4),
//                                                 Text(
//                                                     'Burger Place',
//                                                     style: TextStyle(
//                                                         color: Color(0xFF888888),
//                                                         fontSize: 14,
//                                                         fontFamily: 'Lato',
//                                                         fontWeight: FontWeight.w400,
//                                                         height: 0,
//                                                     ),
//                                                 ),
//                                             ],
//                                         ),
//                                     ),
//                                     const SizedBox(height: 8),
//                                     Text(
//                                         '10.1 mi away',
//                                         style: TextStyle(
//                                             color: Color(0xFF888888),
//                                             fontSize: 14,
//                                             fontFamily: 'Lato',
//                                             fontWeight: FontWeight.w400,
//                                             height: 0,
//                                         ),
//                                     ),
//                                 ],
//                             ),
//                         ),
//                     ],
//                 ),
//             ),
//             const SizedBox(height: 10),
//             Container(
//                 child: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                         Text(
//                             '4.5',
//                             style: TextStyle(
//                                 color: Color(0xFF888888),
//                                 fontSize: 14,
//                                 fontFamily: 'Lato',
//                                 fontWeight: FontWeight.w400,
//                                 height: 0,
//                             ),
//                         ),
//                         const SizedBox(width: 4),
//                         Container(
//                             child: Row(
//                                 mainAxisSize: MainAxisSize.min,
//                                 mainAxisAlignment: MainAxisAlignment.start,
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFFFCC1B),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
//                                         ),
//                                     ),
//                                     const SizedBox(width: 4),
//                                     Container(
//                                         width: 16,
//                                         height: 16,
//                                         decoration: ShapeDecoration(
//                                             color: Color(0xFFD9D9D9),
//                                             shape: StarBorder(
//                                                 points: 5,
//                                                 innerRadiusRatio: 0.38,
//                                                 pointRounding: 0,
//                                                 valleyRounding: 0,
//                                                 rotation: 0,
//                                                 squash: 0,
//                                             ),
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
//     'Dark Aesthetic Burgers',
//     style: TextStyle(
//         color: Color(0xFF00C572),
//         fontSize: 16,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w700,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '\$\$\$',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '.',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     'Burger Place',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '10.1 mi away',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
// // ---
// Text(
//     '4.5',
//     style: TextStyle(
//         color: Color(0xFF888888),
//         fontSize: 14,
//         fontFamily: 'Lato',
//         fontWeight: FontWeight.w400,
//         height: 0,
//     ),
// )
