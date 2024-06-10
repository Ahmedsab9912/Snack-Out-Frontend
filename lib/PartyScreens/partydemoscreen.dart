import 'package:eataly/PartyScreens/partyscreen.dart';
import 'package:flutter/material.dart';

import '../app_theme/app_theme.dart';

class PartyDemoScreen extends StatelessWidget {
  const PartyDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          double screenWidth = constraints.maxWidth;
          double screenHeight = constraints.maxHeight;

          // Calculate sizes based on screen dimensions
          double containerWidth = screenWidth * 0.9;
          double containerHeight = screenHeight * 0.7;
          double imageWidth = screenWidth * 0.1;
          double imageHeight = screenHeight * 0.09;
          double fontSizeLarge = screenWidth * 0.08;
          double fontSizeMedium = screenWidth * 0.045;
          double fontSizeSmall = screenWidth * 0.03;
          double buttonWidth = screenWidth * 0.8;
          double buttonHeight = screenHeight * 0.07;
          double padding = screenWidth * 0.05;
          double marginTop = screenHeight * 0.02;

          return SingleChildScrollView(
            child: Center(
              child: Container(
                width: containerWidth,
                height: containerHeight,
                decoration: ShapeDecoration(
                  // color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      width: containerWidth,
                      padding: EdgeInsets.symmetric(horizontal: padding),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.8),
                        border: Border.all(color: const Color(0xFFD0D5DD), width: 0.5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [],
                      ),
                    ),
                    Container(
                      width: containerWidth * 0.75,
                      margin: EdgeInsets.only(top: marginTop),
                      child: Center(
                        child: RichText(
                          textAlign: TextAlign.left,
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: fontSizeLarge,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF222222),
                              height: 1.2,
                            ),
                            children: [
                              const TextSpan(text: 'How To Party?'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 60),
                    ...buildInstructionItem(
                      context,
                      'assets/images/addfriendss.png',
                      'Add Friends',
                      'Who want to Party',
                      imageWidth,
                      imageHeight,
                      fontSizeMedium,
                      fontSizeSmall,
                    ),
                    SizedBox(height: marginTop),
                    ...buildInstructionItem(
                      context,
                      'assets/images/wallet.png',
                      'Pay for Your Meal',
                      'Everyone Pays Separately',
                      imageWidth,
                      imageHeight,
                      fontSizeMedium,
                      fontSizeSmall,
                    ),
                    SizedBox(height: marginTop),
                    ...buildInstructionItem(
                      context,
                      'assets/images/happyemoji.png',
                      'Hosts Place the Order',
                      'When Everyone is Ready',
                      imageWidth,
                      imageHeight,
                      fontSizeMedium,
                      fontSizeSmall,
                    ),
                    SizedBox(height: marginTop),
                    ...buildInstructionItem(
                      context,
                      'assets/images/cup.png',
                      'Reward for Party',
                      'Party Earns a Discount as Reward',
                      imageWidth,
                      imageHeight,
                      fontSizeMedium,
                      fontSizeSmall,
                    ),
                    SizedBox(height: marginTop),
                    ...buildInstructionItem(
                      context,
                      'assets/images/tagright.png',
                      'Not Actually Hungry',
                      'Come Back Later',
                      imageWidth,
                      imageHeight,
                      fontSizeMedium,
                      fontSizeSmall,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PartyScreen(),
              ),
            );
          },
          child: Container(
            width: 300,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.buttonColor,
            ),
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Let\'s Party',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                Image.asset(
                  'assets/images/redeem.png',
                  width: 30,
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> buildInstructionItem(
      BuildContext context,
      String imagePath,
      String title,
      String subtitle,
      double imageWidth,
      double imageHeight,
      double titleFontSize,
      double subtitleFontSize,
      ) {
    return [
      SizedBox(
        width: imageWidth * 7.6,
        height: 45,
        child: Row(
          children: [
            SizedBox(
              width: imageWidth,
              height: imageHeight,
              child: Image.asset(
                imagePath,
              ),
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: imageWidth * 2.5,
                  height: 25,
                  child: Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: titleFontSize,
                    ),
                  ),
                ),
                SizedBox(
                  width: imageWidth * 3.8,
                  height: 20,
                  child: Text(
                    subtitle,
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: subtitleFontSize,
                      fontWeight: FontWeight.w500,
                      color: const Color(0xFF888888),
                      height: 0,
                      letterSpacing: 0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ];
  }
}
