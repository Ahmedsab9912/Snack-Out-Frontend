import 'package:eataly/Dashboard/HomeScreen.dart';
import 'package:flutter/material.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        // Wrap the SingleChildScrollView with a Center widget
        child: Column(
          mainAxisSize: MainAxisSize.min, // Adjust the Column's size
          mainAxisAlignment:
              MainAxisAlignment.center, // Center content vertically
          children: [
            Container(
              width: 180,
              height: 200,
              margin: const EdgeInsets.only(top: 0, left: 0),
              child: Container(
                width: 200,
                height: 200,
                margin: const EdgeInsets.only(left: 0),
                child: const Image(
                  image: AssetImage("assets/images/fastfood.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              width: 291,
              height: 52,
              margin: const EdgeInsets.only(top: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 300,
                    height: 22,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(),
                    child: const Text(
                      'You haven’t saved any items',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 22,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(),
                    child: const Text(
                      'Return to Home to Explore and Save',
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF888888),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Container(
                width: 155,
                height: 44,
                padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xFF00B288),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Center(
                  child: Text(
                    'Return To Home',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
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
