import 'package:eataly/Dashboard/HomeScreen.dart';
import 'package:eataly/MenuSectionScreens/MenuSelection.dart';
import 'package:flutter/material.dart';

import '../components/bottomNavigatorBar.dart';

class Conforimbookingpage extends StatefulWidget {
  const Conforimbookingpage({super.key});

  @override
  State<Conforimbookingpage> createState() => _ConforimbookingpageState();
}

class _ConforimbookingpageState extends State<Conforimbookingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20, right: 90),
              child: Text(
                'Congratulations',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 5.0),
              child: Text(
                'Your Reservation Request has been \nmade',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
                height: 240,
                width: 360,
                child: Image.asset('assets/images/party1.png')),
            SizedBox(
              height: 20.0,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          MenuSelectionScreen()), // Replace YourNewScreen with the actual screen class you want to navigate to
                );
              },
              child: Container(
                height: 50,
                width: 330,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF00B286),
                ),
                child: Center(
                    child: Text(
                  'Preoceed to Menu Selection',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Container(
              height: 50,
              width: 330,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Color(0xFF00B286),
                  width: 1.0,
                ),
              ),
              child: Center(
                child: Text(
                  'Confirm Reservation',
                  style: TextStyle(
                    color: Color(0xFF00B286),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          BottomNavigationBarMenu()), // Replace YourNewScreen with the actual screen class you want to navigate to
                );
              },
              child: Text(
                'Back to Home',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
