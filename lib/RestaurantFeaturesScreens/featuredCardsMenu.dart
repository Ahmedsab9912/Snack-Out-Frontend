// ignore_for_file: prefer_const_constructors

import 'package:eataly/API/api.dart';
import 'package:eataly/app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:eataly/Models/AllMenuItemsAPI.dart';


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
      padding: EdgeInsets.all(10), // Adjust the padding as needed
      margin: EdgeInsets.only(bottom: 16), // Add bottom margin
      decoration: BoxDecoration(
        color: Colors.white, // Background color of the container
        borderRadius:
            BorderRadius.circular(20), // Border radius similar to the image
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
            imagePath, // Replace with your image asset
            width: 80, // Set the image width
            height: 80, // Set the image height
          ),
          SizedBox(width: 10), // Space between the image and the text
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Text(
                  description,
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
                    children: <TextSpan>[
                      TextSpan(text: 'Starting from '), // Default text style
                      TextSpan(

                        text: price,
                        style: TextStyle(
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

Future<List<CreateMenuItemDto>> fetchMenuItems(int restaurantId) async {
  final response = await http
      .get(Uri.parse('$baseURL/menu-items/$restaurantId'));

  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse
        .map((item) => CreateMenuItemDto.fromJson(item))
        .toList();
  } else {
    throw Exception('Failed to load menu items');
  }
}


class MenuListWidget extends StatefulWidget {
  final int restaurantId; // Add restaurantId as a parameter

  const MenuListWidget({Key? key, required this.restaurantId})
      : super(key: key);

  @override
  _MenuListWidgetState createState() => _MenuListWidgetState();
}

class _MenuListWidgetState extends State<MenuListWidget> {
  late Future<List<CreateMenuItemDto>> futureMenuItems;

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
            child: FutureBuilder<List<CreateMenuItemDto>>(
              future: futureMenuItems,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Failed to load menu items'));
                } else {
                  final menuItems = snapshot.data!;
                  return ListView.builder(
                    padding: EdgeInsets.all(24.0),
                    itemCount: menuItems.length,
                    itemBuilder: (context, index) {
                      final menuItem = menuItems[index];
                      return MenuItemCard(
                        imagePath: menuItem.image,
                        title: menuItem.itemName,
                        description: menuItem.description,
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
              color:AppColors.buttonColor,
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
