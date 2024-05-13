import 'package:eataly/Login&SignupScreens/loginscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    });
    return Scaffold(
      body: Container(
        width: 600,
        height: 800,
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
                    'assets/images/eataly.png',
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
