import 'package:eataly/Profile/Profile.dart';
import 'package:flutter/material.dart';

import '../../components/bottomNavigatorBar.dart';

class Verified_Email_Page extends StatefulWidget {
  const Verified_Email_Page({super.key});

  @override
  State<Verified_Email_Page> createState() => _Verified_Email_PageState();
}

class _Verified_Email_PageState extends State<Verified_Email_Page>
  with SingleTickerProviderStateMixin {

    late AnimationController _animationController;
    late Animation<double> _animation;

    @override
    void initState() {
      super.initState();

      _animationController = AnimationController(
        duration: const Duration(seconds: 2),
        vsync: this,
      );

      _animation = CurvedAnimation(
        parent: _animationController,
        curve: Curves.bounceOut,
      );

      _animationController.forward();
    }

    @override
    void dispose() {
      _animationController.dispose();
      super.dispose();
    }

    @override
    Widget build(BuildContext context) {

      Future.delayed(const Duration(seconds: 5), () {


        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => BottomNavigationBarMenu()),
        );
      });


      return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          // THESE TERMS ARE USED TO RESPONSIVENESS OF CODE
          final imageHeight = constraints.maxHeight * 0.35;
          final imageWidth = constraints.maxWidth * 1;

          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: imageHeight,
                  width: imageWidth,
                  child: Image.asset("assets/images/pattern.png"),
                ),
                Column(
                  children: [
                    Container(
                      height: 180,
                      width: imageWidth,
                      child: ScaleTransition(
                        scale: _animation,
                        child: Image.asset("assets/images/tick.png"),
                      ),
                    ),
                    Text(
                      'Your Email has been Verified',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
