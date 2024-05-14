// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MenuListWidget extends StatefulWidget {
  const MenuListWidget({Key? key}) : super(key: key);

  @override
  _MenuListWidgetState createState() => _MenuListWidgetState();
}

class _MenuListWidgetState extends State<MenuListWidget> {
  Map<String, int> quantities = {};
  int quantity = 1; // Starting quantity

  void incrementQuantity() {
    setState(
      () {
        quantity++;
      },
    );
  }

  void decrementQuantity() {
    if (quantity > 0) {
      setState(
        () {
          quantity--;
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //implements basic material design
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(24.0),
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      bottom: 8.0), // Add padding at the bottom
                  child: Text(
                    'Menu',
                    style: TextStyle(
                      color: Color(0xFF00B288),
                      fontSize: 16,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10), // Adjust the padding as needed
                  margin: EdgeInsets.only(
                      bottom:
                          16), // Add bottom margin// Adjust the padding as needed
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color of the container
                    borderRadius: BorderRadius.circular(
                        20), // Border radius similar to the image
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3), // Shadow position
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/menu1.png', // Replace with your image asset
                        width: 80, // Set the image width
                        height: 80, // Set the image height
                      ),
                      SizedBox(
                          width: 10), // Space between the image and the text
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Caprese Salad',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Fresh mozzarella, tomatoes,basil, balsamic glaze',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey, // Default text color
                                ),
                                children: const <TextSpan>[
                                  TextSpan(
                                      text:
                                          'Starting from '), // Default text style
                                  TextSpan(
                                    text: '\$200',
                                    style: TextStyle(
                                        fontWeight:
                                            FontWeight.bold), // Bold text style
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Space between the text and the counter
                      // Container(
                      //   padding: EdgeInsets.all(4),
                      //   decoration: BoxDecoration(
                      //     color:
                      //         Color(0xFF00B288), // Color for the counter background
                      //     borderRadius: BorderRadius.circular(
                      //         4), // Border radius for the counter
                      //   ),
                      //   child: Row(
                      //     children: <Widget>[
                      //       GestureDetector(
                      //         onTap: decrementQuantity,
                      //         child:
                      //             Icon(Icons.remove, color: Colors.white, size: 16),
                      //       ),
                      //       Padding(
                      //         padding: const EdgeInsets.symmetric(
                      //             horizontal:
                      //                 4.0), // Adjust spacing between icons and text
                      //         child: Text(
                      //           '$quantity', // The item count
                      //           style: TextStyle(
                      //               color: Colors.white,
                      //               fontSize: 12), // Smaller text size
                      //         ),
                      //       ),
                      //       GestureDetector(
                      //         onTap: incrementQuantity,
                      //         child: Icon(Icons.add, color: Colors.white, size: 16),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10), // Adjust the padding as needed
                  margin: EdgeInsets.only(
                      bottom:
                          16), // Add bottom margin// Adjust the padding as needed
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color of the container
                    borderRadius: BorderRadius.circular(
                        20), // Border radius similar to the image
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3), // Shadow position
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/menu2.png', // Replace with your image asset
                        width: 80, // Set the image width
                        height: 80, // Set the image height
                      ),
                      SizedBox(
                          width: 10), // Space between the image and the text
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Grilled Salmon',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Lemon herb marinated salmon, mashed potatoes',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey, // Default text color
                                ),
                                children: const <TextSpan>[
                                  TextSpan(
                                      text:
                                          'Starting from '), // Default text style
                                  TextSpan(
                                    text: '\$200',
                                    style: TextStyle(
                                        fontWeight:
                                            FontWeight.bold), // Bold text style
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Space between the text and the counter
                      // Container(
                      //   padding: EdgeInsets.all(4),
                      //   decoration: BoxDecoration(
                      //     color:
                      //         Color(0xFF00B288), // Color for the counter background
                      //     borderRadius: BorderRadius.circular(
                      //         4), // Border radius for the counter
                      //   ),
                      //   child: Row(
                      //     children: <Widget>[
                      //       GestureDetector(
                      //         onTap: decrementQuantity,
                      //         child:
                      //             Icon(Icons.remove, color: Colors.white, size: 16),
                      //       ),
                      //       Padding(
                      //         padding: const EdgeInsets.symmetric(
                      //             horizontal:
                      //                 4.0), // Adjust spacing between icons and text
                      //         child: Text(
                      //           '$quantity', // The item count
                      //           style: TextStyle(
                      //               color: Colors.white,
                      //               fontSize: 12), // Smaller text size
                      //         ),
                      //       ),
                      //       GestureDetector(
                      //         onTap: incrementQuantity,
                      //         child: Icon(Icons.add, color: Colors.white, size: 16),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10), // Adjust the padding as needed
                  margin: EdgeInsets.only(
                      bottom:
                          16), // Add bottom margin// Adjust the padding as needed
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color of the container
                    borderRadius: BorderRadius.circular(
                        20), // Border radius similar to the image
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3), // Shadow position
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/menu3.png', // Replace with your image asset
                        width: 80, // Set the image width
                        height: 80, // Set the image height
                      ),
                      SizedBox(
                          width: 10), // Space between the image and the text
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Ribeye Steak',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '12oz, marbled ribeye, garlic butter, loaded baked potato',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey, // Default text color
                                ),
                                children: const <TextSpan>[
                                  TextSpan(
                                      text:
                                          'Starting from '), // Default text style
                                  TextSpan(
                                    text: '\$200',
                                    style: TextStyle(
                                        fontWeight:
                                            FontWeight.bold), // Bold text style
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Space between the text and the counter
                      // Container(
                      //   padding: EdgeInsets.all(4),
                      //   decoration: BoxDecoration(
                      //     color:
                      //         Color(0xFF00B288), // Color for the counter background
                      //     borderRadius: BorderRadius.circular(
                      //         4), // Border radius for the counter
                      //   ),
                      //   child: Row(
                      //     children: <Widget>[
                      //       GestureDetector(
                      //         onTap: decrementQuantity,
                      //         child:
                      //             Icon(Icons.remove, color: Colors.white, size: 16),
                      //       ),
                      //       Padding(
                      //         padding: const EdgeInsets.symmetric(
                      //             horizontal:
                      //                 4.0), // Adjust spacing between icons and text
                      //         child: Text(
                      //           '$quantity', // The item count
                      //           style: TextStyle(
                      //               color: Colors.white,
                      //               fontSize: 12), // Smaller text size
                      //         ),
                      //       ),
                      //       GestureDetector(
                      //         onTap: incrementQuantity,
                      //         child: Icon(Icons.add, color: Colors.white, size: 16),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10), // Adjust the padding as needed
                  margin: EdgeInsets.only(
                      bottom:
                          16), // Add bottom margin// Adjust the padding as needed
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color of the container
                    borderRadius: BorderRadius.circular(
                        20), // Border radius similar to the image
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3), // Shadow position
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/menu4.png', // Replace with your image asset
                        width: 80, // Set the image width
                        height: 80, // Set the image height
                      ),
                      SizedBox(
                          width: 10), // Space between the image and the text
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              ' Tiramisu',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Classic Italian coffee flavored dessert',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey, // Default text color
                                ),
                                children: const <TextSpan>[
                                  TextSpan(
                                      text:
                                          'Starting from '), // Default text style
                                  TextSpan(
                                    text: '\$200',
                                    style: TextStyle(
                                        fontWeight:
                                            FontWeight.bold), // Bold text style
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Space between the text and the counter
                      // Container(
                      //   padding: EdgeInsets.all(4),
                      //   decoration: BoxDecoration(
                      //     color:
                      //         Color(0xFF00B288), // Color for the counter background
                      //     borderRadius: BorderRadius.circular(
                      //         4), // Border radius for the counter
                      //   ),
                      //   child: Row(
                      //     children: <Widget>[
                      //       GestureDetector(
                      //         onTap: decrementQuantity,
                      //         child:
                      //             Icon(Icons.remove, color: Colors.white, size: 16),
                      //       ),
                      //       Padding(
                      //         padding: const EdgeInsets.symmetric(
                      //             horizontal:
                      //                 4.0), // Adjust spacing between icons and text
                      //         child: Text(
                      //           '$quantity', // The item count
                      //           style: TextStyle(
                      //               color: Colors.white,
                      //               fontSize: 12), // Smaller text size
                      //         ),
                      //       ),
                      //       GestureDetector(
                      //         onTap: incrementQuantity,
                      //         child: Icon(Icons.add, color: Colors.white, size: 16),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10), // Adjust the padding as needed
                  margin: EdgeInsets.only(
                      bottom:
                          16), // Add bottom margin// Adjust the padding as needed
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color of the container
                    borderRadius: BorderRadius.circular(
                        20), // Border radius similar to the image
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3), // Shadow position
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/menu5.png', // Replace with your image asset
                        width: 80, // Set the image width
                        height: 80, // Set the image height
                      ),
                      SizedBox(
                          width: 10), // Space between the image and the text
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Pasta Carbonara',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Spaghetti, pancetta, egg yolk, parmesan, black pepper',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey, // Default text color
                                ),
                                children: const <TextSpan>[
                                  TextSpan(
                                      text:
                                          'Starting from '), // Default text style
                                  TextSpan(
                                    text: '\$200',
                                    style: TextStyle(
                                        fontWeight:
                                            FontWeight.bold), // Bold text style
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Space between the text and the counter
                      // Container(
                      //   padding: EdgeInsets.all(4),
                      //   decoration: BoxDecoration(
                      //     color:
                      //         Color(0xFF00B288), // Color for the counter background
                      //     borderRadius: BorderRadius.circular(
                      //         4), // Border radius for the counter
                      //   ),
                      //   child: Row(
                      //     children: <Widget>[
                      //       GestureDetector(
                      //         onTap: decrementQuantity,
                      //         child:
                      //             Icon(Icons.remove, color: Colors.white, size: 16),
                      //       ),
                      //       Padding(
                      //         padding: const EdgeInsets.symmetric(
                      //             horizontal:
                      //                 4.0), // Adjust spacing between icons and text
                      //         child: Text(
                      //           '$quantity', // The item count
                      //           style: TextStyle(
                      //               color: Colors.white,
                      //               fontSize: 12), // Smaller text size
                      //         ),
                      //       ),
                      //       GestureDetector(
                      //         onTap: incrementQuantity,
                      //         child: Icon(Icons.add, color: Colors.white, size: 16),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10), // Adjust the padding as needed
                  margin: EdgeInsets.only(
                      bottom:
                          16), // Add bottom margin// Adjust the padding as needed
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color of the container
                    borderRadius: BorderRadius.circular(
                        20), // Border radius similar to the image
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3), // Shadow position
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/menu6.png', // Replace with your image asset
                        width: 80, // Set the image width
                        height: 80, // Set the image height
                      ),
                      SizedBox(
                          width: 10), // Space between the image and the text
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Crispy Calamari',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Lightly fried calamari rings, served with marinara sauce',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey, // Default text color
                                ),
                                children: const <TextSpan>[
                                  TextSpan(
                                      text:
                                          'Starting from '), // Default text style
                                  TextSpan(
                                    text: '\$200',
                                    style: TextStyle(
                                        fontWeight:
                                            FontWeight.bold), // Bold text style
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Space between the text and the counter
                      // Container(
                      //   padding: EdgeInsets.all(4),
                      //   decoration: BoxDecoration(
                      //     color:
                      //         Color(0xFF00B288), // Color for the counter background
                      //     borderRadius: BorderRadius.circular(
                      //         4), // Border radius for the counter
                      //   ),
                      //   child: Row(
                      //     children: <Widget>[
                      //       GestureDetector(
                      //         onTap: decrementQuantity,
                      //         child:
                      //             Icon(Icons.remove, color: Colors.white, size: 16),
                      //       ),
                      //       Padding(
                      //         padding: const EdgeInsets.symmetric(
                      //             horizontal:
                      //                 4.0), // Adjust spacing between icons and text
                      //         child: Text(
                      //           '$quantity', // The item count
                      //           style: TextStyle(
                      //               color: Colors.white,
                      //               fontSize: 12), // Smaller text size
                      //         ),
                      //       ),
                      //       GestureDetector(
                      //         onTap: incrementQuantity,
                      //         child: Icon(Icons.add, color: Colors.white, size: 16),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10), // Adjust the padding as needed
                  margin: EdgeInsets.only(
                      bottom:
                          16), // Add bottom margin// Adjust the padding as needed
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color of the container
                    borderRadius: BorderRadius.circular(
                        20), // Border radius similar to the image
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3), // Shadow position
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/menu7.png', // Replace with your image asset
                        width: 80, // Set the image width
                        height: 80, // Set the image height
                      ),
                      SizedBox(
                          width: 10), // Space between the image and the text
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Filet Mignon',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              '8 oz prime filet, red wine reduction, mashed potatoes',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey, // Default text color
                                ),
                                children: const <TextSpan>[
                                  TextSpan(
                                      text:
                                          'Starting from '), // Default text style
                                  TextSpan(
                                    text: '\$200',
                                    style: TextStyle(
                                        fontWeight:
                                            FontWeight.bold), // Bold text style
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Space between the text and the counter
                      // Container(
                      //   padding: EdgeInsets.all(4),
                      //   decoration: BoxDecoration(
                      //     color:
                      //         Color(0xFF00B288), // Color for the counter background
                      //     borderRadius: BorderRadius.circular(
                      //         4), // Border radius for the counter
                      //   ),
                      //   child: Row(
                      //     children: <Widget>[
                      //       GestureDetector(
                      //         onTap: decrementQuantity,
                      //         child:
                      //             Icon(Icons.remove, color: Colors.white, size: 16),
                      //       ),
                      //       Padding(
                      //         padding: const EdgeInsets.symmetric(
                      //             horizontal:
                      //                 4.0), // Adjust spacing between icons and text
                      //         child: Text(
                      //           '$quantity', // The item count
                      //           style: TextStyle(
                      //               color: Colors.white,
                      //               fontSize: 12), // Smaller text size
                      //         ),
                      //       ),
                      //       GestureDetector(
                      //         onTap: incrementQuantity,
                      //         child: Icon(Icons.add, color: Colors.white, size: 16),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10), // Adjust the padding as needed
                  margin: EdgeInsets.only(
                      bottom:
                          16), // Add bottom margin// Adjust the padding as needed
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color of the container
                    borderRadius: BorderRadius.circular(
                        20), // Border radius similar to the image
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        spreadRadius: 2,
                        blurRadius: 7,
                        offset: Offset(0, 3), // Shadow position
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/menu8.png', // Replace with your image asset
                        width: 80, // Set the image width
                        height: 80, // Set the image height
                      ),
                      SizedBox(
                          width: 10), // Space between the image and the text
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Molten Lava Cake',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              'Warm chocolate cake, molten, vanilla ice cream',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey, // Default text color
                                ),
                                children: const <TextSpan>[
                                  TextSpan(
                                      text:
                                          'Starting from '), // Default text style
                                  TextSpan(
                                    text: '\$200',
                                    style: TextStyle(
                                        fontWeight:
                                            FontWeight.bold), // Bold text style
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Space between the text and the counter
                      // Container(
                      //   padding: EdgeInsets.all(4),
                      //   decoration: BoxDecoration(
                      //     color:
                      //         Color(0xFF00B288), // Color for the counter background
                      //     borderRadius: BorderRadius.circular(
                      //         4), // Border radius for the counter
                      //   ),
                      //   child: Row(
                      //     children: <Widget>[
                      //       GestureDetector(
                      //         onTap: decrementQuantity,
                      //         child:
                      //             Icon(Icons.remove, color: Colors.white, size: 16),
                      //       ),
                      //       Padding(
                      //         padding: const EdgeInsets.symmetric(
                      //             horizontal:
                      //                 4.0), // Adjust spacing between icons and text
                      //         child: Text(
                      //           '$quantity', // The item count
                      //           style: TextStyle(
                      //               color: Colors.white,
                      //               fontSize: 12), // Smaller text size
                      //         ),
                      //       ),
                      //       GestureDetector(
                      //         onTap: incrementQuantity,
                      //         child: Icon(Icons.add, color: Colors.white, size: 16),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),

                // Container(
                //   width: 342,
                //   height: 104,
                //   padding: const EdgeInsets.all(12),
                //   clipBehavior: Clip.antiAlias,
                //   decoration: ShapeDecoration(
                //     color: Colors.white,
                //     shape: RoundedRectangleBorder(
                //       side: const BorderSide(width: 1, color: Color(0xFFD0D5DD)),
                //       borderRadius: BorderRadius.circular(16),
                //     ),
                //   ),
                //   child: Column(
                //     mainAxisSize: MainAxisSize.min,
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     crossAxisAlignment: CrossAxisAlignment.end,
                //     children: [
                //       Row(
                //         mainAxisSize: MainAxisSize.min,
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         children: [
                //           Container(
                //             height: 80,
                //             clipBehavior: Clip.antiAlias,
                //             decoration: ShapeDecoration(
                //               shape: RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.circular(8)),
                //             ),
                //             child: Row(
                //               mainAxisSize: MainAxisSize.min,
                //               mainAxisAlignment: MainAxisAlignment.center,
                //               crossAxisAlignment: CrossAxisAlignment.center,
                //               children: [
                //                 Container(
                //                   width: 80,
                //                   height: 121,
                //                   decoration: const BoxDecoration(
                //                     image: DecorationImage(
                //                       image: NetworkImage(
                //                           "https://via.placeholder.com/80x121"),
                //                       fit: BoxFit.fill,
                //                     ),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //           const SizedBox(width: 12),
                //           const Column(
                //             mainAxisSize: MainAxisSize.min,
                //             mainAxisAlignment: MainAxisAlignment.start,
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Text(
                //                 'Caprese Salad',
                //                 style: TextStyle(
                //                   color: Color(0xFF00B288),
                //                   fontSize: 16,
                //                   fontFamily: 'Lato',
                //                   fontWeight: FontWeight.w700,
                //                   height: 0,
                //                 ),
                //               ),
                //               SizedBox(height: 4),
                //               Row(
                //                 mainAxisSize: MainAxisSize.min,
                //                 mainAxisAlignment: MainAxisAlignment.start,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   SizedBox(
                //                     width: 155,
                //                     child: Text(
                //                       'Fresh mozzarella, tomatoes, basil, balsamic glaze',
                //                       style: TextStyle(
                //                         color: Color(0xFF888888),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w400,
                //                         height: 0,
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //               SizedBox(height: 4),
                //               Text.rich(
                //                 TextSpan(
                //                   children: [
                //                     TextSpan(
                //                       text: 'Starting from ',
                //                       style: TextStyle(
                //                         color: Color(0xFF888888),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w400,
                //                         height: 0,
                //                       ),
                //                     ),
                //                     TextSpan(
                //                       text: '\$200',
                //                       style: TextStyle(
                //                         color: Color(0xFF222222),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w600,
                //                         height: 0,
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ],
                //       ),
                //       const SizedBox(width: 14),
                //       SizedBox(
                //         height: 16,
                //         child: Row(
                //           mainAxisSize: MainAxisSize.min,
                //           mainAxisAlignment: MainAxisAlignment.start,
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             SizedBox(
                //               width: 16,
                //               height: 16,
                //               child: Stack(
                //                 children: [
                //                   Positioned(
                //                     left: 5,
                //                     top: 7,
                //                     child: Container(
                //                       width: 6,
                //                       height: 2,
                //                       decoration: ShapeDecoration(
                //                         color: Colors.white,
                //                         shape: RoundedRectangleBorder(
                //                           borderRadius: BorderRadius.circular(4.57),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //             const SizedBox(width: 1),
                //             Expanded(
                //               child: Container(
                //                 height: double.infinity,
                //                 padding: const EdgeInsets.symmetric(
                //                     horizontal: 8, vertical: 1),
                //                 clipBehavior: Clip.antiAlias,
                //                 decoration: const BoxDecoration(color: Colors.white),
                //                 child: const Row(
                //                   mainAxisSize: MainAxisSize.min,
                //                   mainAxisAlignment: MainAxisAlignment.start,
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     SizedBox(
                //                       width: 7,
                //                       height: 13,
                //                       child: Text(
                //                         '1',
                //                         textAlign: TextAlign.center,
                //                         style: TextStyle(
                //                           color: Color(0xFF222222),
                //                           fontSize: 12,
                //                           fontFamily: 'Lato',
                //                           fontWeight: FontWeight.w400,
                //                           height: 0,
                //                         ),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ),
                //             const SizedBox(width: 1),
                //             SizedBox(
                //               width: 16,
                //               height: 16,
                //               child: Stack(
                //                 children: [
                //                   Positioned(
                //                     left: 5,
                //                     top: 7,
                //                     child: Container(
                //                       width: 6,
                //                       height: 2,
                //                       decoration: ShapeDecoration(
                //                         color: Colors.white,
                //                         shape: RoundedRectangleBorder(
                //                           borderRadius: BorderRadius.circular(4.57),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                   Positioned(
                //                     left: 9,
                //                     top: 5,
                //                     child: Transform(
                //                       transform: Matrix4.identity()
                //                         ..translate(0.0, 0.0)
                //                         ..rotateZ(1.57),
                //                       child: Container(
                //                         width: 6,
                //                         height: 2,
                //                         decoration: ShapeDecoration(
                //                           color: Colors.white,
                //                           shape: RoundedRectangleBorder(
                //                             borderRadius: BorderRadius.circular(4.57),
                //                           ),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Container(
                //   width: 342,
                //   height: 104,
                //   padding: const EdgeInsets.all(12),
                //   clipBehavior: Clip.antiAlias,
                //   decoration: ShapeDecoration(
                //     color: Colors.white,
                //     shape: RoundedRectangleBorder(
                //       side: const BorderSide(width: 1, color: Color(0xFFD0D5DD)),
                //       borderRadius: BorderRadius.circular(16),
                //     ),
                //   ),
                //   child: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     crossAxisAlignment: CrossAxisAlignment.end,
                //     children: [
                //       Row(
                //         mainAxisSize: MainAxisSize.min,
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         children: [
                //           Container(
                //             height: 80,
                //             clipBehavior: Clip.antiAlias,
                //             decoration: ShapeDecoration(
                //               shape: RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.circular(8)),
                //             ),
                //             child: Row(
                //               mainAxisSize: MainAxisSize.min,
                //               mainAxisAlignment: MainAxisAlignment.center,
                //               crossAxisAlignment: CrossAxisAlignment.center,
                //               children: [
                //                 Container(
                //                   width: 80,
                //                   height: 121,
                //                   decoration: const BoxDecoration(
                //                     image: DecorationImage(
                //                       image: NetworkImage(
                //                           "https://via.placeholder.com/80x121"),
                //                       fit: BoxFit.cover,
                //                     ),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //           const SizedBox(width: 12),
                //           const Column(
                //             mainAxisSize: MainAxisSize.min,
                //             mainAxisAlignment: MainAxisAlignment.start,
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Text(
                //                 'Grilled Salmon',
                //                 style: TextStyle(
                //                   color: Color(0xFF00B288),
                //                   fontSize: 16,
                //                   fontFamily: 'Lato',
                //                   fontWeight: FontWeight.w700,
                //                   height: 0,
                //                 ),
                //               ),
                //               SizedBox(height: 4),
                //               Row(
                //                 mainAxisSize: MainAxisSize.min,
                //                 mainAxisAlignment: MainAxisAlignment.start,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   SizedBox(
                //                     width: 155,
                //                     child: Text(
                //                       'Lemon herb marinated salmon, mashed potatoes',
                //                       style: TextStyle(
                //                         color: Color(0xFF888888),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w400,
                //                         height: 0,
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //               SizedBox(height: 4),
                //               Text.rich(
                //                 TextSpan(
                //                   children: [
                //                     TextSpan(
                //                       text: 'Starting from ',
                //                       style: TextStyle(
                //                         color: Color(0xFF888888),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w400,
                //                         height: 0,
                //                       ),
                //                     ),
                //                     TextSpan(
                //                       text: '\$200',
                //                       style: TextStyle(
                //                         color: Color(0xFF222222),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w600,
                //                         height: 0,
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ],
                //       ),
                //       const SizedBox(width: 14),
                //       SizedBox(
                //         height: 16,
                //         child: Row(
                //           mainAxisSize: MainAxisSize.min,
                //           mainAxisAlignment: MainAxisAlignment.start,
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             SizedBox(
                //               width: 16,
                //               height: 16,
                //               child: Stack(
                //                 children: [
                //                   Positioned(
                //                     left: 5,
                //                     top: 7,
                //                     child: Container(
                //                       width: 6,
                //                       height: 2,
                //                       decoration: ShapeDecoration(
                //                         color: Colors.white,
                //                         shape: RoundedRectangleBorder(
                //                           borderRadius: BorderRadius.circular(4.57),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //             const SizedBox(width: 1),
                //             Expanded(
                //               child: Container(
                //                 height: double.infinity,
                //                 padding: const EdgeInsets.symmetric(
                //                     horizontal: 8, vertical: 1),
                //                 clipBehavior: Clip.antiAlias,
                //                 decoration: const BoxDecoration(color: Colors.white),
                //                 child: const Row(
                //                   mainAxisSize: MainAxisSize.min,
                //                   mainAxisAlignment: MainAxisAlignment.start,
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     SizedBox(
                //                       width: 7,
                //                       height: 13,
                //                       child: Text(
                //                         '0',
                //                         textAlign: TextAlign.center,
                //                         style: TextStyle(
                //                           color: Color(0xFF222222),
                //                           fontSize: 12,
                //                           fontFamily: 'Lato',
                //                           fontWeight: FontWeight.w400,
                //                           height: 0,
                //                         ),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ),
                //             const SizedBox(width: 1),
                //             SizedBox(
                //               width: 16,
                //               height: 16,
                //               child: Stack(
                //                 children: [
                //                   Positioned(
                //                     left: 5,
                //                     top: 7,
                //                     child: Container(
                //                       width: 6,
                //                       height: 2,
                //                       decoration: ShapeDecoration(
                //                         color: Colors.white,
                //                         shape: RoundedRectangleBorder(
                //                           borderRadius: BorderRadius.circular(4.57),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                   Positioned(
                //                     left: 9,
                //                     top: 5,
                //                     child: Transform(
                //                       transform: Matrix4.identity()
                //                         ..translate(0.0, 0.0)
                //                         ..rotateZ(1.57),
                //                       child: Container(
                //                         width: 6,
                //                         height: 2,
                //                         decoration: ShapeDecoration(
                //                           color: Colors.white,
                //                           shape: RoundedRectangleBorder(
                //                             borderRadius: BorderRadius.circular(4.57),
                //                           ),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Container(
                //   width: 342,
                //   height: 104,
                //   padding: const EdgeInsets.all(12),
                //   clipBehavior: Clip.antiAlias,
                //   decoration: ShapeDecoration(
                //     color: Colors.white,
                //     shape: RoundedRectangleBorder(
                //       side: const BorderSide(width: 1, color: Color(0xFFD0D5DD)),
                //       borderRadius: BorderRadius.circular(16),
                //     ),
                //   ),
                //   child: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     crossAxisAlignment: CrossAxisAlignment.end,
                //     children: [
                //       Row(
                //         mainAxisSize: MainAxisSize.min,
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         children: [
                //           Container(
                //             height: 80,
                //             clipBehavior: Clip.antiAlias,
                //             decoration: ShapeDecoration(
                //               shape: RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.circular(8)),
                //             ),
                //             child: Row(
                //               mainAxisSize: MainAxisSize.min,
                //               mainAxisAlignment: MainAxisAlignment.center,
                //               crossAxisAlignment: CrossAxisAlignment.center,
                //               children: [
                //                 Container(
                //                   width: 80,
                //                   height: 120,
                //                   decoration: const BoxDecoration(
                //                     image: DecorationImage(
                //                       image: NetworkImage(
                //                           "https://via.placeholder.com/80x120"),
                //                       fit: BoxFit.fill,
                //                     ),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //           const SizedBox(width: 12),
                //           const Column(
                //             mainAxisSize: MainAxisSize.min,
                //             mainAxisAlignment: MainAxisAlignment.start,
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Text(
                //                 'Ribeye Steak',
                //                 style: TextStyle(
                //                   color: Color(0xFF00B288),
                //                   fontSize: 16,
                //                   fontFamily: 'Lato',
                //                   fontWeight: FontWeight.w700,
                //                   height: 0,
                //                 ),
                //               ),
                //               SizedBox(height: 4),
                //               Row(
                //                 mainAxisSize: MainAxisSize.min,
                //                 mainAxisAlignment: MainAxisAlignment.start,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   SizedBox(
                //                     width: 155,
                //                     child: Text(
                //                       '12 oz. marbled ribeye, garlic butter, loaded baked potato',
                //                       style: TextStyle(
                //                         color: Color(0xFF888888),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w400,
                //                         height: 0,
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //               SizedBox(height: 4),
                //               Text.rich(
                //                 TextSpan(
                //                   children: [
                //                     TextSpan(
                //                       text: 'Starting from ',
                //                       style: TextStyle(
                //                         color: Color(0xFF888888),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w400,
                //                         height: 0,
                //                       ),
                //                     ),
                //                     TextSpan(
                //                       text: '\$200',
                //                       style: TextStyle(
                //                         color: Color(0xFF222222),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w600,
                //                         height: 0,
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ],
                //       ),
                //       const SizedBox(width: 14),
                //       SizedBox(
                //         height: 16,
                //         child: Row(
                //           mainAxisSize: MainAxisSize.min,
                //           mainAxisAlignment: MainAxisAlignment.start,
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             SizedBox(
                //               width: 16,
                //               height: 16,
                //               child: Stack(
                //                 children: [
                //                   Positioned(
                //                     left: 5,
                //                     top: 7,
                //                     child: Container(
                //                       width: 6,
                //                       height: 2,
                //                       decoration: ShapeDecoration(
                //                         color: Colors.white,
                //                         shape: RoundedRectangleBorder(
                //                           borderRadius: BorderRadius.circular(4.57),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //             const SizedBox(width: 1),
                //             Expanded(
                //               child: Container(
                //                 height: double.infinity,
                //                 padding: const EdgeInsets.symmetric(
                //                     horizontal: 8, vertical: 1),
                //                 clipBehavior: Clip.antiAlias,
                //                 decoration: const BoxDecoration(color: Colors.white),
                //                 child: const Row(
                //                   mainAxisSize: MainAxisSize.min,
                //                   mainAxisAlignment: MainAxisAlignment.start,
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     SizedBox(
                //                       width: 7,
                //                       height: 13,
                //                       child: Text(
                //                         '3',
                //                         textAlign: TextAlign.center,
                //                         style: TextStyle(
                //                           color: Color(0xFF222222),
                //                           fontSize: 12,
                //                           fontFamily: 'Lato',
                //                           fontWeight: FontWeight.w400,
                //                           height: 0,
                //                         ),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ),
                //             const SizedBox(width: 1),
                //             SizedBox(
                //               width: 16,
                //               height: 16,
                //               child: Stack(
                //                 children: [
                //                   Positioned(
                //                     left: 5,
                //                     top: 7,
                //                     child: Container(
                //                       width: 6,
                //                       height: 2,
                //                       decoration: ShapeDecoration(
                //                         color: Colors.white,
                //                         shape: RoundedRectangleBorder(
                //                           borderRadius: BorderRadius.circular(4.57),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                   Positioned(
                //                     left: 9,
                //                     top: 5,
                //                     child: Transform(
                //                       transform: Matrix4.identity()
                //                         ..translate(0.0, 0.0)
                //                         ..rotateZ(1.57),
                //                       child: Container(
                //                         width: 6,
                //                         height: 2,
                //                         decoration: ShapeDecoration(
                //                           color: Colors.white,
                //                           shape: RoundedRectangleBorder(
                //                             borderRadius: BorderRadius.circular(4.57),
                //                           ),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Container(
                //   width: 342,
                //   height: 104,
                //   padding: const EdgeInsets.all(12),
                //   clipBehavior: Clip.antiAlias,
                //   decoration: ShapeDecoration(
                //     color: Colors.white,
                //     shape: RoundedRectangleBorder(
                //       side: const BorderSide(width: 1, color: Color(0xFFD0D5DD)),
                //       borderRadius: BorderRadius.circular(16),
                //     ),
                //   ),
                //   child: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     crossAxisAlignment: CrossAxisAlignment.end,
                //     children: [
                //       Row(
                //         mainAxisSize: MainAxisSize.min,
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         children: [
                //           Container(
                //             clipBehavior: Clip.antiAlias,
                //             decoration: ShapeDecoration(
                //               shape: RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.circular(8)),
                //             ),
                //             child: Column(
                //               mainAxisSize: MainAxisSize.min,
                //               mainAxisAlignment: MainAxisAlignment.start,
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               children: [
                //                 Container(
                //                   width: 112,
                //                   height: 75,
                //                   decoration: const BoxDecoration(
                //                     image: DecorationImage(
                //                       image: NetworkImage(
                //                           "https://via.placeholder.com/112x75"),
                //                       fit: BoxFit.fill,
                //                     ),
                //                   ),
                //                 ),
                //                 Container(
                //                   width: 112,
                //                   height: 75,
                //                   decoration: const BoxDecoration(
                //                     image: DecorationImage(
                //                       image: NetworkImage(
                //                           "https://via.placeholder.com/112x75"),
                //                       fit: BoxFit.fill,
                //                     ),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //           const SizedBox(width: 12),
                //           const Column(
                //             mainAxisSize: MainAxisSize.min,
                //             mainAxisAlignment: MainAxisAlignment.start,
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Text(
                //                 'Tiramisu',
                //                 style: TextStyle(
                //                   color: Color(0xFF00B288),
                //                   fontSize: 16,
                //                   fontFamily: 'Lato',
                //                   fontWeight: FontWeight.w700,
                //                   height: 0,
                //                 ),
                //               ),
                //               SizedBox(height: 4),
                //               Row(
                //                 mainAxisSize: MainAxisSize.min,
                //                 mainAxisAlignment: MainAxisAlignment.start,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   SizedBox(
                //                     width: 155,
                //                     child: Text(
                //                       'Classic Italian coffee-flavored dessert',
                //                       style: TextStyle(
                //                         color: Color(0xFF888888),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w400,
                //                         height: 0,
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //               SizedBox(height: 4),
                //               Text.rich(
                //                 TextSpan(
                //                   children: [
                //                     TextSpan(
                //                       text: 'Starting from ',
                //                       style: TextStyle(
                //                         color: Color(0xFF888888),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w400,
                //                         height: 0,
                //                       ),
                //                     ),
                //                     TextSpan(
                //                       text: '\$200',
                //                       style: TextStyle(
                //                         color: Color(0xFF222222),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w600,
                //                         height: 0,
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ],
                //       ),
                //       const SizedBox(width: 14),
                //       SizedBox(
                //         height: 16,
                //         child: Row(
                //           mainAxisSize: MainAxisSize.min,
                //           mainAxisAlignment: MainAxisAlignment.start,
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             SizedBox(
                //               width: 16,
                //               height: 16,
                //               child: Stack(
                //                 children: [
                //                   Positioned(
                //                     left: 5,
                //                     top: 7,
                //                     child: Container(
                //                       width: 6,
                //                       height: 2,
                //                       decoration: ShapeDecoration(
                //                         color: Colors.white,
                //                         shape: RoundedRectangleBorder(
                //                           borderRadius: BorderRadius.circular(4.57),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //             const SizedBox(width: 1),
                //             Expanded(
                //               child: Container(
                //                 height: double.infinity,
                //                 padding: const EdgeInsets.symmetric(
                //                     horizontal: 8, vertical: 1),
                //                 clipBehavior: Clip.antiAlias,
                //                 decoration: const BoxDecoration(color: Colors.white),
                //                 child: const Row(
                //                   mainAxisSize: MainAxisSize.min,
                //                   mainAxisAlignment: MainAxisAlignment.start,
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     SizedBox(
                //                       width: 7,
                //                       height: 13,
                //                       child: Text(
                //                         '4',
                //                         textAlign: TextAlign.center,
                //                         style: TextStyle(
                //                           color: Color(0xFF222222),
                //                           fontSize: 12,
                //                           fontFamily: 'Lato',
                //                           fontWeight: FontWeight.w400,
                //                           height: 0,
                //                         ),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ),
                //             const SizedBox(width: 1),
                //             SizedBox(
                //               width: 16,
                //               height: 16,
                //               child: Stack(
                //                 children: [
                //                   Positioned(
                //                     left: 5,
                //                     top: 7,
                //                     child: Container(
                //                       width: 6,
                //                       height: 2,
                //                       decoration: ShapeDecoration(
                //                         color: Colors.white,
                //                         shape: RoundedRectangleBorder(
                //                           borderRadius: BorderRadius.circular(4.57),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                   Positioned(
                //                     left: 9,
                //                     top: 5,
                //                     child: Transform(
                //                       transform: Matrix4.identity()
                //                         ..translate(0.0, 0.0)
                //                         ..rotateZ(1.57),
                //                       child: Container(
                //                         width: 6,
                //                         height: 2,
                //                         decoration: ShapeDecoration(
                //                           color: Colors.white,
                //                           shape: RoundedRectangleBorder(
                //                             borderRadius: BorderRadius.circular(4.57),
                //                           ),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Container(
                //   width: 342,
                //   height: 104,
                //   padding: const EdgeInsets.all(12),
                //   clipBehavior: Clip.antiAlias,
                //   decoration: ShapeDecoration(
                //     color: Colors.white,
                //     shape: RoundedRectangleBorder(
                //       side: const BorderSide(width: 1, color: Color(0xFFD0D5DD)),
                //       borderRadius: BorderRadius.circular(16),
                //     ),
                //   ),
                //   child: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     crossAxisAlignment: CrossAxisAlignment.end,
                //     children: [
                //       Row(
                //         mainAxisSize: MainAxisSize.min,
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         children: [
                //           Container(
                //             height: 80,
                //             clipBehavior: Clip.antiAlias,
                //             decoration: ShapeDecoration(
                //               shape: RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.circular(8)),
                //             ),
                //             child: Row(
                //               mainAxisSize: MainAxisSize.min,
                //               mainAxisAlignment: MainAxisAlignment.center,
                //               crossAxisAlignment: CrossAxisAlignment.center,
                //               children: [
                //                 Container(
                //                   width: 80,
                //                   height: 120,
                //                   decoration: const BoxDecoration(
                //                     image: DecorationImage(
                //                       image: NetworkImage(
                //                           "https://via.placeholder.com/80x120"),
                //                       fit: BoxFit.fill,
                //                     ),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //           const SizedBox(width: 12),
                //           const Column(
                //             mainAxisSize: MainAxisSize.min,
                //             mainAxisAlignment: MainAxisAlignment.start,
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Text(
                //                 'Pasta Carbonara',
                //                 style: TextStyle(
                //                   color: Color(0xFF00B288),
                //                   fontSize: 16,
                //                   fontFamily: 'Lato',
                //                   fontWeight: FontWeight.w700,
                //                   height: 0,
                //                 ),
                //               ),
                //               SizedBox(height: 4),
                //               Row(
                //                 mainAxisSize: MainAxisSize.min,
                //                 mainAxisAlignment: MainAxisAlignment.start,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   SizedBox(
                //                     width: 155,
                //                     child: Text(
                //                       'Spaghetti, pancetta, egg yolk, parmesan, black pepperx',
                //                       style: TextStyle(
                //                         color: Color(0xFF888888),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w400,
                //                         height: 0,
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //               SizedBox(height: 4),
                //               Text.rich(
                //                 TextSpan(
                //                   children: [
                //                     TextSpan(
                //                       text: 'Starting from ',
                //                       style: TextStyle(
                //                         color: Color(0xFF888888),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w400,
                //                         height: 0,
                //                       ),
                //                     ),
                //                     TextSpan(
                //                       text: '\$200',
                //                       style: TextStyle(
                //                         color: Color(0xFF222222),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w600,
                //                         height: 0,
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ],
                //       ),
                //       const SizedBox(width: 14),
                //       SizedBox(
                //         height: 16,
                //         child: Row(
                //           mainAxisSize: MainAxisSize.min,
                //           mainAxisAlignment: MainAxisAlignment.start,
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             SizedBox(
                //               width: 16,
                //               height: 16,
                //               child: Stack(
                //                 children: [
                //                   Positioned(
                //                     left: 5,
                //                     top: 7,
                //                     child: Container(
                //                       width: 6,
                //                       height: 2,
                //                       decoration: ShapeDecoration(
                //                         color: Colors.white,
                //                         shape: RoundedRectangleBorder(
                //                           borderRadius: BorderRadius.circular(4.57),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //             const SizedBox(width: 1),
                //             Expanded(
                //               child: Container(
                //                 height: double.infinity,
                //                 padding: const EdgeInsets.symmetric(
                //                     horizontal: 8, vertical: 1),
                //                 clipBehavior: Clip.antiAlias,
                //                 decoration: const BoxDecoration(color: Colors.white),
                //                 child: const Row(
                //                   mainAxisSize: MainAxisSize.min,
                //                   mainAxisAlignment: MainAxisAlignment.start,
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     SizedBox(
                //                       width: 7,
                //                       height: 13,
                //                       child: Text(
                //                         '5',
                //                         textAlign: TextAlign.center,
                //                         style: TextStyle(
                //                           color: Color(0xFF222222),
                //                           fontSize: 12,
                //                           fontFamily: 'Lato',
                //                           fontWeight: FontWeight.w400,
                //                           height: 0,
                //                         ),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ),
                //             const SizedBox(width: 1),
                //             SizedBox(
                //               width: 16,
                //               height: 16,
                //               child: Stack(
                //                 children: [
                //                   Positioned(
                //                     left: 5,
                //                     top: 7,
                //                     child: Container(
                //                       width: 6,
                //                       height: 2,
                //                       decoration: ShapeDecoration(
                //                         color: Colors.white,
                //                         shape: RoundedRectangleBorder(
                //                           borderRadius: BorderRadius.circular(4.57),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                   Positioned(
                //                     left: 9,
                //                     top: 5,
                //                     child: Transform(
                //                       transform: Matrix4.identity()
                //                         ..translate(0.0, 0.0)
                //                         ..rotateZ(1.57),
                //                       child: Container(
                //                         width: 6,
                //                         height: 2,
                //                         decoration: ShapeDecoration(
                //                           color: Colors.white,
                //                           shape: RoundedRectangleBorder(
                //                             borderRadius: BorderRadius.circular(4.57),
                //                           ),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Container(
                //   width: 342,
                //   height: 104,
                //   padding: const EdgeInsets.all(12),
                //   clipBehavior: Clip.antiAlias,
                //   decoration: ShapeDecoration(
                //     color: Colors.white,
                //     shape: RoundedRectangleBorder(
                //       side: const BorderSide(width: 1, color: Color(0xFFD0D5DD)),
                //       borderRadius: BorderRadius.circular(16),
                //     ),
                //   ),
                //   child: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     crossAxisAlignment: CrossAxisAlignment.end,
                //     children: [
                //       Row(
                //         mainAxisSize: MainAxisSize.min,
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         children: [
                //           Container(
                //             width: 80,
                //             clipBehavior: Clip.antiAlias,
                //             decoration: ShapeDecoration(
                //               shape: RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.circular(8)),
                //             ),
                //             child: Row(
                //               mainAxisSize: MainAxisSize.min,
                //               mainAxisAlignment: MainAxisAlignment.start,
                //               crossAxisAlignment: CrossAxisAlignment.center,
                //               children: [
                //                 Container(
                //                   width: 120,
                //                   height: 80,
                //                   decoration: const BoxDecoration(
                //                     image: DecorationImage(
                //                       image: NetworkImage(
                //                           "https://via.placeholder.com/120x80"),
                //                       fit: BoxFit.fill,
                //                     ),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //           const SizedBox(width: 12),
                //           const Column(
                //             mainAxisSize: MainAxisSize.min,
                //             mainAxisAlignment: MainAxisAlignment.start,
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Text(
                //                 'Crispy Calamari',
                //                 style: TextStyle(
                //                   color: Color(0xFF00B288),
                //                   fontSize: 16,
                //                   fontFamily: 'Lato',
                //                   fontWeight: FontWeight.w700,
                //                   height: 0,
                //                 ),
                //               ),
                //               SizedBox(height: 4),
                //               Row(
                //                 mainAxisSize: MainAxisSize.min,
                //                 mainAxisAlignment: MainAxisAlignment.start,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   SizedBox(
                //                     width: 155,
                //                     child: Text(
                //                       'Lightly fried calamari rings, served with marinara sauce',
                //                       style: TextStyle(
                //                         color: Color(0xFF888888),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w400,
                //                         height: 0,
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //               SizedBox(height: 4),
                //               Text.rich(
                //                 TextSpan(
                //                   children: [
                //                     TextSpan(
                //                       text: 'Starting from ',
                //                       style: TextStyle(
                //                         color: Color(0xFF888888),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w400,
                //                         height: 0,
                //                       ),
                //                     ),
                //                     TextSpan(
                //                       text: '\$200',
                //                       style: TextStyle(
                //                         color: Color(0xFF222222),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w600,
                //                         height: 0,
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ],
                //       ),
                //       const SizedBox(width: 14),
                //       SizedBox(
                //         height: 16,
                //         child: Row(
                //           mainAxisSize: MainAxisSize.min,
                //           mainAxisAlignment: MainAxisAlignment.start,
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             SizedBox(
                //               width: 16,
                //               height: 16,
                //               child: Stack(
                //                 children: [
                //                   Positioned(
                //                     left: 5,
                //                     top: 7,
                //                     child: Container(
                //                       width: 6,
                //                       height: 2,
                //                       decoration: ShapeDecoration(
                //                         color: Colors.white,
                //                         shape: RoundedRectangleBorder(
                //                           borderRadius: BorderRadius.circular(4.57),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //             const SizedBox(width: 1),
                //             Expanded(
                //               child: Container(
                //                 height: double.infinity,
                //                 padding: const EdgeInsets.symmetric(
                //                     horizontal: 8, vertical: 1),
                //                 clipBehavior: Clip.antiAlias,
                //                 decoration: const BoxDecoration(color: Colors.white),
                //                 child: const Row(
                //                   mainAxisSize: MainAxisSize.min,
                //                   mainAxisAlignment: MainAxisAlignment.start,
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     SizedBox(
                //                       width: 7,
                //                       height: 13,
                //                       child: Text(
                //                         '2',
                //                         textAlign: TextAlign.center,
                //                         style: TextStyle(
                //                           color: Color(0xFF222222),
                //                           fontSize: 12,
                //                           fontFamily: 'Lato',
                //                           fontWeight: FontWeight.w400,
                //                           height: 0,
                //                         ),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ),
                //             const SizedBox(width: 1),
                //             SizedBox(
                //               width: 16,
                //               height: 16,
                //               child: Stack(
                //                 children: [
                //                   Positioned(
                //                     left: 5,
                //                     top: 7,
                //                     child: Container(
                //                       width: 6,
                //                       height: 2,
                //                       decoration: ShapeDecoration(
                //                         color: Colors.white,
                //                         shape: RoundedRectangleBorder(
                //                           borderRadius: BorderRadius.circular(4.57),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                   Positioned(
                //                     left: 9,
                //                     top: 5,
                //                     child: Transform(
                //                       transform: Matrix4.identity()
                //                         ..translate(0.0, 0.0)
                //                         ..rotateZ(1.57),
                //                       child: Container(
                //                         width: 6,
                //                         height: 2,
                //                         decoration: ShapeDecoration(
                //                           color: Colors.white,
                //                           shape: RoundedRectangleBorder(
                //                             borderRadius: BorderRadius.circular(4.57),
                //                           ),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Container(
                //   width: 342,
                //   height: 104,
                //   padding: const EdgeInsets.all(12),
                //   clipBehavior: Clip.antiAlias,
                //   decoration: ShapeDecoration(
                //     color: Colors.white,
                //     shape: RoundedRectangleBorder(
                //       side: const BorderSide(width: 1, color: Color(0xFFD0D5DD)),
                //       borderRadius: BorderRadius.circular(16),
                //     ),
                //   ),
                //   child: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     crossAxisAlignment: CrossAxisAlignment.end,
                //     children: [
                //       Row(
                //         mainAxisSize: MainAxisSize.min,
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         children: [
                //           Container(
                //             clipBehavior: Clip.antiAlias,
                //             decoration: ShapeDecoration(
                //               shape: RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.circular(8)),
                //             ),
                //             child: Row(
                //               mainAxisSize: MainAxisSize.min,
                //               mainAxisAlignment: MainAxisAlignment.center,
                //               crossAxisAlignment: CrossAxisAlignment.center,
                //               children: [
                //                 Container(
                //                   width: 83,
                //                   height: 124,
                //                   decoration: const BoxDecoration(
                //                     image: DecorationImage(
                //                       image: NetworkImage(
                //                           "https://via.placeholder.com/83x124"),
                //                       fit: BoxFit.fill,
                //                     ),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //           const SizedBox(width: 12),
                //           const Column(
                //             mainAxisSize: MainAxisSize.min,
                //             mainAxisAlignment: MainAxisAlignment.start,
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Text(
                //                 'Filet Mignon',
                //                 style: TextStyle(
                //                   color: Color(0xFF00B288),
                //                   fontSize: 16,
                //                   fontFamily: 'Lato',
                //                   fontWeight: FontWeight.w700,
                //                   height: 0,
                //                 ),
                //               ),
                //               SizedBox(height: 4),
                //               Row(
                //                 mainAxisSize: MainAxisSize.min,
                //                 mainAxisAlignment: MainAxisAlignment.start,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   SizedBox(
                //                     width: 155,
                //                     child: Text(
                //                       '8 oz. prime filet, red wine reduction, mashed potatoes',
                //                       style: TextStyle(
                //                         color: Color(0xFF888888),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w400,
                //                         height: 0,
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //               SizedBox(height: 4),
                //               Text.rich(
                //                 TextSpan(
                //                   children: [
                //                     TextSpan(
                //                       text: 'Starting from ',
                //                       style: TextStyle(
                //                         color: Color(0xFF888888),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w400,
                //                         height: 0,
                //                       ),
                //                     ),
                //                     TextSpan(
                //                       text: '\$200',
                //                       style: TextStyle(
                //                         color: Color(0xFF222222),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w600,
                //                         height: 0,
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ],
                //       ),
                //       const SizedBox(width: 14),
                //       SizedBox(
                //         height: 16,
                //         child: Row(
                //           mainAxisSize: MainAxisSize.min,
                //           mainAxisAlignment: MainAxisAlignment.start,
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             SizedBox(
                //               width: 16,
                //               height: 16,
                //               child: Stack(
                //                 children: [
                //                   Positioned(
                //                     left: 5,
                //                     top: 7,
                //                     child: Container(
                //                       width: 6,
                //                       height: 2,
                //                       decoration: ShapeDecoration(
                //                         color: Colors.white,
                //                         shape: RoundedRectangleBorder(
                //                           borderRadius: BorderRadius.circular(4.57),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //             const SizedBox(width: 1),
                //             Expanded(
                //               child: Container(
                //                 height: double.infinity,
                //                 padding: const EdgeInsets.symmetric(
                //                     horizontal: 8, vertical: 1),
                //                 clipBehavior: Clip.antiAlias,
                //                 decoration: const BoxDecoration(color: Colors.white),
                //                 child: const Row(
                //                   mainAxisSize: MainAxisSize.min,
                //                   mainAxisAlignment: MainAxisAlignment.start,
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     SizedBox(
                //                       width: 7,
                //                       height: 13,
                //                       child: Text(
                //                         '4',
                //                         textAlign: TextAlign.center,
                //                         style: TextStyle(
                //                           color: Color(0xFF222222),
                //                           fontSize: 12,
                //                           fontFamily: 'Lato',
                //                           fontWeight: FontWeight.w400,
                //                           height: 0,
                //                         ),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ),
                //             const SizedBox(width: 1),
                //             SizedBox(
                //               width: 16,
                //               height: 16,
                //               child: Stack(
                //                 children: [
                //                   Positioned(
                //                     left: 5,
                //                     top: 7,
                //                     child: Container(
                //                       width: 6,
                //                       height: 2,
                //                       decoration: ShapeDecoration(
                //                         color: Colors.white,
                //                         shape: RoundedRectangleBorder(
                //                           borderRadius: BorderRadius.circular(4.57),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                   Positioned(
                //                     left: 9,
                //                     top: 5,
                //                     child: Transform(
                //                       transform: Matrix4.identity()
                //                         ..translate(0.0, 0.0)
                //                         ..rotateZ(1.57),
                //                       child: Container(
                //                         width: 6,
                //                         height: 2,
                //                         decoration: ShapeDecoration(
                //                           color: Colors.white,
                //                           shape: RoundedRectangleBorder(
                //                             borderRadius: BorderRadius.circular(4.57),
                //                           ),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // Container(
                //   width: 342,
                //   height: 104,
                //   padding: const EdgeInsets.all(12),
                //   clipBehavior: Clip.antiAlias,
                //   decoration: ShapeDecoration(
                //     color: Colors.white,
                //     shape: RoundedRectangleBorder(
                //       side: const BorderSide(width: 1, color: Color(0xFFD0D5DD)),
                //       borderRadius: BorderRadius.circular(16),
                //     ),
                //   ),
                //   child: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     mainAxisAlignment: MainAxisAlignment.start,
                //     crossAxisAlignment: CrossAxisAlignment.end,
                //     children: [
                //       Row(
                //         mainAxisSize: MainAxisSize.min,
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         crossAxisAlignment: CrossAxisAlignment.center,
                //         children: [
                //           Container(
                //             width: 80,
                //             height: 80,
                //             clipBehavior: Clip.antiAlias,
                //             decoration: ShapeDecoration(
                //               shape: RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.circular(8)),
                //             ),
                //             child: Row(
                //               mainAxisSize: MainAxisSize.min,
                //               mainAxisAlignment: MainAxisAlignment.center,
                //               crossAxisAlignment: CrossAxisAlignment.center,
                //               children: [
                //                 Container(
                //                   width: 84,
                //                   height: 105,
                //                   decoration: const BoxDecoration(
                //                     image: DecorationImage(
                //                       image: NetworkImage(
                //                           "https://via.placeholder.com/84x105"),
                //                       fit: BoxFit.fill,
                //                     ),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //           const SizedBox(width: 12),
                //           const Column(
                //             mainAxisSize: MainAxisSize.min,
                //             mainAxisAlignment: MainAxisAlignment.start,
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Text(
                //                 'Molten Lava Cake',
                //                 style: TextStyle(
                //                   color: Color(0xFF00B288),
                //                   fontSize: 16,
                //                   fontFamily: 'Lato',
                //                   fontWeight: FontWeight.w700,
                //                   height: 0,
                //                 ),
                //               ),
                //               SizedBox(height: 4),
                //               Row(
                //                 mainAxisSize: MainAxisSize.min,
                //                 mainAxisAlignment: MainAxisAlignment.start,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   SizedBox(
                //                     width: 155,
                //                     child: Text(
                //                       'Warm chocolate cake, molten, vanilla ice cream',
                //                       style: TextStyle(
                //                         color: Color(0xFF888888),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w400,
                //                         height: 0,
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //               SizedBox(height: 4),
                //               Text.rich(
                //                 TextSpan(
                //                   children: [
                //                     TextSpan(
                //                       text: 'Starting from ',
                //                       style: TextStyle(
                //                         color: Color(0xFF888888),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w400,
                //                         height: 0,
                //                       ),
                //                     ),
                //                     TextSpan(
                //                       text: '\$200',
                //                       style: TextStyle(
                //                         color: Color(0xFF222222),
                //                         fontSize: 12,
                //                         fontFamily: 'Lato',
                //                         fontWeight: FontWeight.w600,
                //                         height: 0,
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ],
                //       ),
                //       const SizedBox(width: 14),
                //       SizedBox(
                //         height: 16,
                //         child: Row(
                //           mainAxisSize: MainAxisSize.min,
                //           mainAxisAlignment: MainAxisAlignment.start,
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           children: [
                //             SizedBox(
                //               width: 16,
                //               height: 16,
                //               child: Stack(
                //                 children: [
                //                   Positioned(
                //                     left: 5,
                //                     top: 7,
                //                     child: Container(
                //                       width: 6,
                //                       height: 2,
                //                       decoration: ShapeDecoration(
                //                         color: Colors.white,
                //                         shape: RoundedRectangleBorder(
                //                           borderRadius: BorderRadius.circular(4.57),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //             const SizedBox(width: 1),
                //             Expanded(
                //               child: Container(
                //                 height: double.infinity,
                //                 padding: const EdgeInsets.symmetric(
                //                     horizontal: 8, vertical: 1),
                //                 clipBehavior: Clip.antiAlias,
                //                 decoration: const BoxDecoration(color: Colors.white),
                //                 child: const Row(
                //                   mainAxisSize: MainAxisSize.min,
                //                   mainAxisAlignment: MainAxisAlignment.start,
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     SizedBox(
                //                       width: 7,
                //                       height: 13,
                //                       child: Text(
                //                         '2',
                //                         textAlign: TextAlign.center,
                //                         style: TextStyle(
                //                           color: Color(0xFF222222),
                //                           fontSize: 12,
                //                           fontFamily: 'Lato',
                //                           fontWeight: FontWeight.w400,
                //                           height: 0,
                //                         ),
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ),
                //             const SizedBox(width: 1),
                //             SizedBox(
                //               width: 16,
                //               height: 16,
                //               child: Stack(
                //                 children: [
                //                   Positioned(
                //                     left: 5,
                //                     top: 7,
                //                     child: Container(
                //                       width: 6,
                //                       height: 2,
                //                       decoration: ShapeDecoration(
                //                         color: Colors.white,
                //                         shape: RoundedRectangleBorder(
                //                           borderRadius: BorderRadius.circular(4.57),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                   Positioned(
                //                     left: 9,
                //                     top: 5,
                //                     child: Transform(
                //                       transform: Matrix4.identity()
                //                         ..translate(0.0, 0.0)
                //                         ..rotateZ(1.57),
                //                       child: Container(
                //                         width: 6,
                //                         height: 2,
                //                         decoration: ShapeDecoration(
                //                           color: Colors.white,
                //                           shape: RoundedRectangleBorder(
                //                             borderRadius: BorderRadius.circular(4.57),
                //                           ),
                //                         ),
                //                       ),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ],
                //   ),
                //     ),
              ],
            ),
          ),
          Container(
            height: 44,
            width: 326,
            decoration: BoxDecoration(
              color: Color(0xFF00B286),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'Make a Booking',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 16,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
