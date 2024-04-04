import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
        width: 390,
        height: 844,
        color: Colors.white, // Set your desired background color
        child: Stack(
          children: [
            Positioned(
              top: 20,
              left: 20,
              child: Container(
                width: 325,
                height: 684,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  color: Colors.white, // Set your desired color
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 0, left: 0),
                      child: Text(
                        'Today',
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF00B288),
                          letterSpacing: 0,
                          height: 19 / 16, // Line height
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    
                    // Add your other content here
                  ],
                ),
              ),
            ),
            Positioned(
              top: 41.5, // Adjust top position as needed for the image
              left: 21, // Adjust left position as needed for the image
              child: Image.asset(
                'assets/images/eddie.png', // Replace with your image path
                width: 40,
                height: 59,
              ),
            ),
            Positioned(
              top: 51, // Adjust top position as needed for the yellow frame
              left: 65, // Adjust left position as needed for the yellow frame
              child: Container(
                width: 208,
                height: 40,
                color: Colors.white, // Set your desired color
                child: Center(
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 14,
                        color: Colors.black, // Set your desired color
                        letterSpacing: 0,
                        height: 20 / 14, // Line height
                      ),
                      children: [
                        TextSpan(
                          text: 'Eddie Markson',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: ' added you to a Party. '),
                        TextSpan(
                          text: '16m',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: Color(0xFF888888), // Set your desired color
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 57, // Adjust top position as needed for the new frame
              left: 274, // Adjust left position as needed for the new frame
              child: Container(
                width: 70,
                height: 29,
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color:const Color(0xFF00B288), // Set your desired color
                ),
                child: const Center(
                  child: Text(
                    'Accept',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.white, // Set your desired color
                      letterSpacing: 0,
                      height: 20 / 12, // Line height
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 95.5, // Adjust top position as needed for the image
              left: 21, // Adjust left position as needed for the image
              child: Image.asset(
                'assets/images/audrey.png', // Replace with your image path
                width: 40,
                height: 59,
              ),
            ),
            Positioned(
              top: 106, // Adjust top position as needed for the yellow frame
              left: 65, // Adjust left position as needed for the yellow frame
              child: Container(
                width: 208,
                height: 60,
                color: Colors.white, // Set your desired color
                child: Center(
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 14,
                        color: Colors.black, // Set your desired color
                        letterSpacing: 0,
                        height: 20 / 14, // Line height
                      ),
                      children: [
                        TextSpan(
                          text: 'Audrey Max',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                            text:
                                ' Who might you know. Is on Eataly. Tap here to add them as Friend. '),
                        TextSpan(
                          text: '16m',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: Color(0xFF888888), // Set your desired color
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 110, // Adjust top position as needed for the new frame
              left: 274, // Adjust left position as needed for the new frame
              child: Container(
                width: 70,
                height: 29,
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFF00B288), // Set your desired color
                ),
                child: const Center(
                  child: Text(
                    'Add',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.white, // Set your desired color
                      letterSpacing: 0,
                      height: 20 / 12, // Line height
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 175, // Adjust top position as needed for the image
              left: 21, // Adjust left position as needed for the image
              child: Image.asset(
                'assets/images/baghBlueIcon.png', // Replace with your image path
                width: 40,
                height: 59,
              ),
            ),
            Positioned(
              top: 180, // Adjust top position as needed for the yellow frame
              left: 65, // Adjust left position as needed for the yellow frame
              child: Container(
                width: 208,
                height: 40,
                color: Colors.white, // Set your desired color
                child: Center(
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 14,
                        color: Colors.black, // Set your desired color
                        letterSpacing: 0,
                        height: 20 / 14, // Line height
                      ),
                      children: [
                        TextSpan(
                            text: 'You have a Booking in about half an hour. '),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 226, // Adjust top position as needed for the image
              left: 21, // Adjust left position as needed for the image
              child: Image.asset(
                'assets/images/romanov.png', // Replace with your image path
                width: 40,
                height: 59,
              ),
            ),
            Positioned(
              top: 235, // Adjust top position as needed for the yellow frame
              left: 65, // Adjust left position as needed for the yellow frame
              child: Container(
                width: 208,
                height: 40,
                color: Colors.white, // Set your desired color
                child: Center(
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 14,
                        color: Colors.black, // Set your desired color
                        letterSpacing: 0,
                        height: 20 / 14, // Line height
                      ),
                      children: [
                        TextSpan(
                          text: 'Romanov Freddy',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: ' added you as a Friend. '),
                        TextSpan(
                          text: '16m',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: Color(0xFF888888), // Set your desired color
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 240, // Adjust top position as needed for the new frame
              left: 274, // Adjust left position as needed for the new frame
              child: Container(
                width: 70,
                height: 29,
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFF00B288), // Set your desired color
                ),
                child: const Center(
                  child: Text(
                    'Accept',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.white, // Set your desired color
                      letterSpacing: 0,
                      height: 20 / 12, // Line height
                    ),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 285, // Adjust top position as needed for the new frame
              left: 22, // Adjust left position as needed for the new frame
              child: Center(
                child: Text(
                  'Yesterday',
                  style: TextStyle(
                    fontFamily: 'Lato',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF00B288), // Set your desired color
                    letterSpacing: 0,
                    height: 19 / 16, // Line height
                  ),
                ),
              ),
            ),
            Positioned(
              top: 305, // Adjust top position as needed for the image
              left: 21, // Adjust left position as needed for the image
              child: Image.asset(
                'assets/images/mark.png', // Replace with your image path
                width: 40,
                height: 59,
              ),
            ),
            Positioned(
              top: 315, // Adjust top position as needed for the yellow frame
              left: 65, // Adjust left position as needed for the yellow frame
              child: Container(
                width: 208,
                height: 40,
                color: Colors.white, // Set your desired color
                child: Center(
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 14,
                        color: Colors.black, // Set your desired color
                        letterSpacing: 0,
                        height: 20 / 14, // Line height
                      ),
                      children: [
                        TextSpan(
                          text: 'Mark Angel',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: ' added you to a Party. '),
                        TextSpan(
                          text: '16m',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: Color(0xFF888888), // Set your desired color
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 318, // Adjust top position as needed for the new frame
              left: 274, // Adjust left position as needed for the new frame
              child: Container(
                width: 70,
                height: 29,
                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFF888888), // Set your desired color
                ),
                child: const Center(
                  child: Text(
                    'Accepted',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.white, // Set your desired color
                      letterSpacing: 0,
                      height: 20 / 12, // Line height
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 365, // Adjust top position as needed for the image
              left: 21, // Adjust left position as needed for the image
              child: Image.asset(
                'assets/images/junoonn.png', // Replace with your image path
                width: 40,
                height: 59,
              ),
            ),
            Positioned(
              top: 370, // Adjust top position as needed for the yellow frame
              left: 65, // Adjust left position as needed for the yellow frame
              child: Container(
                width: 208,
                height: 60,
                color: Colors.white, // Set your desired color
                child: Center(
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 14,
                        color: Colors.black, // Set your desired color
                        letterSpacing: 0,
                        height: 20 / 14, // Line height
                      ),
                      children: [
                        TextSpan(
                            text:
                                ' You reported a restaurant yestersday, Click here to review your report. '),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 440, // Adjust top position as needed for the image
              left: 21, // Adjust left position as needed for the image
              child: Image.asset(
                'assets/images/albert.png', // Replace with your image path
                width: 40,
                height: 59,
              ),
            ),
            Positioned(
              top: 445, // Adjust top position as needed for the yellow frame
              left: 65, // Adjust left position as needed for the yellow frame
              child: Container(
                width: 208,
                height: 60,
                color: Colors.white, // Set your desired color
                child: Center(
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 14,
                        color: Colors.black, // Set your desired color
                        letterSpacing: 0,
                        height: 20 / 14, // Line height
                      ),
                      children: [
                        TextSpan(
                          text: 'Albert Logan',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                            text:
                                ' who you might know, is on Eataly. Tap here to add them as a Friend. '),
                        TextSpan(
                          text: '16m',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: Color(0xFF888888), // Set your desired color
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 450, // Adjust top position as needed for the new frame
              left: 274, // Adjust left position as needed for the new frame
              child: Container(
                width: 70,
                height: 29,
                padding: const EdgeInsets.fromLTRB(16, 4, 16, 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFF00B288), // Set your desired color
                ),
                child: const Center(
                  child: Text(
                    'Add',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.white, // Set your desired color
                      letterSpacing: 0,
                      height: 20 / 12, // Line height
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 515, // Adjust top position as needed for the image
              left: 21, // Adjust left position as needed for the image
              child: Image.asset(
                'assets/images/smash.png', // Replace with your image path
                width: 40,
                height: 59,
              ),
            ),
            Positioned(
              top: 525, // Adjust top position as needed for the yellow frame
              left: 65, // Adjust left position as needed for the yellow frame
              child: Container(
                width: 208,
                height: 40,
                color: Colors.white, // Set your desired color
                child: Center(
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 14,
                        color: Colors.black, // Set your desired color
                        letterSpacing: 0,
                        height: 20 / 14, // Line height
                      ),
                      children: [
                        TextSpan(text: 'You have a Table Booking in 2 days. '),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 570, // Adjust top position as needed for the image
              left: 21, // Adjust left position as needed for the image
              child: Image.asset(
                'assets/images/dd.png', // Replace with your image path
                width: 40,
                height: 59,
              ),
            ),
            Positioned(
              top: 580, // Adjust top position as needed for the yellow frame
              left: 65, // Adjust left position as needed for the yellow frame
              child: Container(
                width: 208,
                height: 40,
                color: Colors.white, // Set your desired color
                child: Center(
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 14,
                        color: Colors.black, // Set your desired color
                        letterSpacing: 0,
                        height: 20 / 14, // Line height
                      ),
                      children: [
                        TextSpan(text: 'You cancelled a booking at Deli Daily Co.'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 625, // Adjust top position as needed for the image
              left: 21, // Adjust left position as needed for the image
              child: Image.asset(
                'assets/images/michaela.png', // Replace with your image path
                width: 40,
                height: 59,
              ),
            ),
            Positioned(
              top: 635, // Adjust top position as needed for the yellow frame
              left: 65, // Adjust left position as needed for the yellow frame
              child: Container(
                width: 208,
                height: 40,
                color: Colors.white, // Set your desired color
                child: Center(
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontFamily: 'Lato',
                        fontSize: 14,
                        color: Colors.black, // Set your desired color
                        letterSpacing: 0,
                        height: 20 / 14, // Line height
                      ),
                      children: [
                        TextSpan(
                          text: 'Michaela Ed',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: ' added you as a Friend. '),
                        TextSpan(
                          text: '16m',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 10,
                            color: Color(0xFF888888), // Set your desired color
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 635, // Adjust top position as needed for the new frame
              left: 274, // Adjust left position as needed for the new frame
              child: Container(
                width: 70,
                height: 29,
                padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xFF888888), // Set your desired color
                ),
                child: const Center(
                  child: Text(
                    'Accepted',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: Colors.white, // Set your desired color
                      letterSpacing: 0,
                      height: 20 / 12, // Line height
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      )
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: NotificationsScreen(),
  ));
}
