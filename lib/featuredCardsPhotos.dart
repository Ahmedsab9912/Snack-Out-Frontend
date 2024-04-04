import 'package:flutter/material.dart';

class Photos extends StatelessWidget {
  const Photos({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //implements basic material design
        body: ListView(children: [
      const Padding(
        padding: EdgeInsets.only(
            top: 24, left: 24), // Add 24px top margin and 8px bottom padding
        child: Text(
        'Photos',
        style: TextStyle(
          color: Color(0xFF00B288),
          fontSize: 16,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w700,
          height: 0,
        ),
      ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 24, right: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 98,
              height: 98,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/photo1.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 8, right: 8),
              width: 98,
              height: 98,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/photo2.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: 98,
              height: 98,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/photo3.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 24, right: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 98,
              height: 98,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/photo4.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 8, right: 8),
              width: 98,
              height: 98,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/photo5.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: 98,
              height: 98,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/photo6.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 24, right: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 98,
              height: 98,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/photo7.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 8, right: 8),
              width: 98,
              height: 98,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/photo8.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: 98,
              height: 98,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/photo9.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 24, right: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 98,
              height: 98,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/photo10.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 8, right: 8),
              width: 98,
              height: 98,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/photo11.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: 98,
              height: 98,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/photo12.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 24, right: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 98,
              height: 98,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/photo13.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 8, right: 8),
              width: 98,
              height: 98,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/photo14.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: 98,
              height: 98,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/photo15.png'),
                  fit: BoxFit.fill,
                ),
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
