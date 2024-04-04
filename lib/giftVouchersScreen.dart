// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class GiftVoucherScreen extends StatelessWidget {
  const GiftVoucherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Getting screen size
    final screenSize = MediaQuery.of(context).size;
    final width = screenSize.width * 0.9; // 90% of screen width
    final height = screenSize.height * 0.95; // 90% of screen height
    return Scaffold(
      body: Center(
        // Center the container on the screen
        child: Container(
          width: width, // Set the width
          height: height, // Set the height
          padding: const EdgeInsets.all(24.0), // Padding from all sides
          decoration: BoxDecoration(
            color: Colors.white, // Background color for the container
            borderRadius: BorderRadius.circular(8.0), // Corner radius
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1), // Shadow color
                spreadRadius: 1,
                blurRadius: 3,
                offset: const Offset(0, 1), // Shadow position
              ),
            ],
          ),

          // Allows scrolling when content is larger than the screen
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 103.0, // width in logical pixels
                    height: 116.0, // height in logical pixels
                    padding:
                        const EdgeInsets.all(10), // padding for inner space
                    decoration: BoxDecoration(
                      color: const Color(
                          0xFFF8BBD0), // Light pink color from the Material color palette
                      borderRadius: BorderRadius.circular(8), // Rounded corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1), // Shadow color
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset:
                              const Offset(0, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        // Replace this with your image asset
                        Image.asset(
                          'assets/images/gift.png',
                          width: 24.0, // Image width
                          height: 24.0, // Image height
                          color: Colors
                              .black54, // If you want to apply a color filter to the image
                        ),
                        const SizedBox(
                            height: 8), // Space between image and text
                        const Text(
                          'Gift Vouchers',
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0, // Font size for the text
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Adding cross image on the right
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 8.0,
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(
                            context); // Add your action for the cross image tap here
                      },
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.close, // Using Material Icons for simplicity
                          color: Colors.black, // Set the icon color
                          size: 24.0, // Set the icon size
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Image.asset(
                      'assets/images/image1.png'), // Your gift image asset path
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                  'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
                  'Ut enim ad minim veniam',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // Replace with your exact color codes and dimensions
                  foregroundColor: Colors.white,
                  primary: Colors.teal, // Text color
                  shadowColor: Colors.transparent, // No shadow
                  // The shape and border side can be adjusted to match your design
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.green),
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 15), // Adjust padding to your needs
                ),
                onPressed: () {
                  // TODO: Add your onPressed function here
                },
                child: Row(
                  mainAxisSize: MainAxisSize
                      .min, // Use min to prevent the Row from occupying more space than its children need
                  children: <Widget>[
                    Text(
                      'Redeem Gift Vouchers', // Replace with your button text
                      style: TextStyle(
                        fontSize: 16, // Adjust font size to your needs
                        fontWeight:
                            FontWeight.bold, // Adjust font weight if needed
                      ),
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      'assets/images/redeem.png', // Replace with your asset image path
                      width: 20, // Adjust the size as needed
                      height: 20, // Adjust the size as needed
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
