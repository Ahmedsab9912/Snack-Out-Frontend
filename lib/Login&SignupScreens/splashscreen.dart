import 'package:eataly/Login&SignupScreens/loginscreen.dart';
import 'package:eataly/components/bottomNavigatorBar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkLoginStatus();
  }

  Future<void> _checkLoginStatus() async {
    final prefs = await SharedPreferences.getInstance();
    final bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    Future.delayed( Duration(seconds: 5), () {
      if (isLoggedIn) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => BottomNavigationBarMenu()),
        );
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final containerHeight = screenSize.height * 1;
    final containerWidth = screenSize.width * 1;
    final imageHeight = screenSize.height * 0.36;
    final imageWidth = screenSize.width * 0.9;

    return Scaffold(
      body: Container(
        width: containerWidth,
        height: containerHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/rectangle.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/snackmate.png',
                    width: 200,
                    height: 200,
                  ),
                ],
              ),
            ),
            const Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: SizedBox(
                width: 262,
                height: 80,
                child: Text(
                  'Skip the Wait, Secure Your Plate\n– Instant Table Reservations!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Forum',
                    fontWeight: FontWeight.w400,
                    height: 1.2,
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
