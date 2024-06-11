import 'package:eataly/components/bottomNavigatorBar.dart';
import 'package:flutter/material.dart';
import '../app_theme/app_theme.dart';

class SavedScreen extends StatelessWidget {
  const SavedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          // Get the screen width and height
          double screenWidth = constraints.maxWidth;
          double screenHeight = constraints.maxHeight;

          // Calculate sizes based on screen dimensions
          double imageWidth = screenWidth * 0.50;
          double imageHeight = screenHeight * 0.30;
          double containerWidth = screenWidth * 0.7;
          double buttonWidth = screenWidth * 0.7;
          double buttonHeight = screenHeight * 0.085;
          double fontSize = screenWidth * 0.04;

          return Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min, // Adjust the Column's size
                mainAxisAlignment:
                MainAxisAlignment.center, // Center content vertically
                children: [
                  Container(
                    width: imageWidth,
                    height: imageHeight,
                    margin: const EdgeInsets.only(top: 0, left: 0),
                    child: const Image(
                      image: AssetImage("assets/images/fastfood.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: containerWidth,
                    margin: const EdgeInsets.only(top: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            'You haven’t saved any items',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: fontSize,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Return to Home to Explore and Save',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: fontSize,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF888888),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavigationBarMenu()),
                      );
                    },
                    child: Container(
                      width: buttonWidth,
                      height: buttonHeight,
                      padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.buttonColor,
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
        },
      ),
    );
  }
}
