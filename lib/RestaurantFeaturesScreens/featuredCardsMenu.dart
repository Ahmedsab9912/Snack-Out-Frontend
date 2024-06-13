import 'package:eataly/API/api.dart';
import 'package:eataly/app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../Models/Menu_Items_Model.dart'; // Import the new model

class MenuItemCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;
  final String price;

  const MenuItemCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: EdgeInsets.all(10), // Adjust the padding as needed
      margin: EdgeInsets.only(bottom: 16), // Add bottom margin
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), // Border radius similar to the image
        border: Border.all(color: Colors.black12),
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
              child: imagePath.isNotEmpty
                  ? Image.network(
                imagePath, // Use the provided image URL
                width: 110, // Set the image width
                height: 110, // Set the image height
                fit: BoxFit.cover, // Ensure the image covers the container
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.image, size: 100); // Show an image icon on error
                },
              )
                  : Icon(Icons.image, size: 100), // Show an image icon if no image URL
            ),
          ),
          SizedBox(width: 15), // Space between the image and the text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 18,),
                Text(
                  title,
                  style: TextStyle(
                    color: AppColors.primaryTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
                SizedBox(height: 3,),
                RichText(
                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black, // Default text color
                    ),
                    children: <TextSpan>[
                      // TextSpan(text: 'Starting from '), // Default text style
                      TextSpan(
                        text: price,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold), // Bold text style
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Future<List<MenuItemsModel>> fetchMenuItems(int restaurantId) async {
  final response = await http.get(Uri.parse('$baseURL/restaurants/$restaurantId/menu-items'));

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((item) => MenuItemsModel.fromJson(item)).toList();
  } else {
    throw Exception('Failed to load menu items');
  }
}

class MenuListWidget extends StatefulWidget {
  final int restaurantId; // Add restaurantId as a parameter

  const MenuListWidget({Key? key, required this.restaurantId}) : super(key: key);

  @override
  _MenuListWidgetState createState() => _MenuListWidgetState();
}

class _MenuListWidgetState extends State<MenuListWidget> {
  late Future<List<MenuItemsModel>> futureMenuItems;

  @override
  void initState() {
    super.initState();
    futureMenuItems = fetchMenuItems(widget.restaurantId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<MenuItemsModel>>(
              future: futureMenuItems,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Failed to load menu items'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(child: Text('No menu items available'));
                } else {
                  final menuItems = snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.all(24.0),
                    itemCount: menuItems.length,
                    itemBuilder: (context, index) {
                      final menuItem = menuItems[index];
                      return MenuItemCard(
                        imagePath: menuItem.image ?? '',
                        title: menuItem.itemName!,
                        description: menuItem.description!,
                        price: '\$${menuItem.price.toString()}',
                      );
                    },
                  );
                }
              },
            ),
          ),
          Container(
            height: 44,
            width: 326,
            decoration: BoxDecoration(
              color: AppColors.buttonColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Text(
                'Make a Reservation',
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
