import 'dart:convert';
import 'package:eataly/app_theme/app_theme.dart';
import 'package:eataly/components/bottomNavigatorBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../API/api.dart';
import '../Models/AllRestaurantsAPI.dart';
import 'package:http/http.dart' as http;
import '../Shared_Preferences/shared_preferences_page.dart';
import '../RestaurantDetails/RestaurantDetails.dart';

class SavedScreen extends StatefulWidget {
  const SavedScreen({super.key});

  @override
  createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen> {
  List<Data> favoriteRestaurants = [];

  @override
  void initState() {
    super.initState();
    fetchFavoriteRestaurants();
  }

  Future<void> fetchFavoriteRestaurants() async {
    final prefs = SharedPreferencesPage();
    final accessToken = await prefs.getAccessToken();

    if (accessToken == null) {
      // Handle the case where there is no access token
      print('No access token found');
      return;
    }

    final response = await http.get(
      Uri.parse('$baseURL/users/favorites'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        favoriteRestaurants = (data as List).map((json) => Data.fromJson(json)).toList();
      });
    } else {
      print('Failed to fetch favorite restaurants: ${response.statusCode}');
    }
  }

  Future<void> _removeFromFavorites(Data restaurant) async {
    final prefs = SharedPreferencesPage();
    final accessToken = await prefs.getAccessToken();

    if (accessToken == null) {
      // Handle the case where there is no access token
      print('No access token found');
      return;
    }

    final url = '$baseURL/users/favorites';
    final body = jsonEncode({'restaurantId': restaurant.id});

    final response = await http.delete(
      Uri.parse(url),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
      body: body,
    );

    if (response.statusCode == 200) {
      setState(() {
        favoriteRestaurants.remove(restaurant);
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Removed from favorites'),
        ),
      );
    } else {
      print('Failed to remove favorite restaurant: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Saved Restaurants")),
      body: favoriteRestaurants.isEmpty
          ? Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 180,
                    height: 200,
                    child: Image.asset(
                      "assets/images/fastfood.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'You haven’t saved any items',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    'Return to Home to Explore and Save',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF888888),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavigationBarMenu()),
                      );
                    },
                    child: Container(
                      width: 155,
                      height: 44,
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
            )
          : ListView.builder(
              itemCount: favoriteRestaurants.length,
              itemBuilder: (context, index) {
                var restaurant = favoriteRestaurants[index];
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TopNavigationBarManu(
                              restaurant: restaurant,
                            ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 10, left: 10, top: 10),
                    child: Card(
                      elevation: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmVzdGF1cmFudHxlbnwwfHwwfHx8MA%3D%3D',
                                  height: 220,
                                  width: 350,
                                  fit: BoxFit.cover,
                                  loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                                    if (loadingProgress == null) {
                                      return child;
                                    }
                                    return Center(
                                      child: CircularProgressIndicator(
                                        value: loadingProgress.expectedTotalBytes != null
                                            ? loadingProgress.cumulativeBytesLoaded / (loadingProgress.expectedTotalBytes ?? 1)
                                            : null,
                                      ),
                                    );
                                  },
                                  errorBuilder: (context, error, stackTrace) {
                                    return Center(child: Text('Failed to load image'));
                                  },
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  restaurant.name ?? "No Name",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.green),
                                ),
                                IconButton(
                                  icon: SvgPicture.asset(
                                    'assets/svgIcons/filledHeart.svg',
                                    width: 24,
                                    height: 24,
                                  ),
                                  onPressed: () => _removeFromFavorites(restaurant),
                                ),
                              ],
                            ),
                            SizedBox(height: 5),
                            Text(
                              restaurant.city ?? "No City",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(height: 5),
                            Text(
                              restaurant.address ?? "No State",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Text(
                                  "4.5",
                                  style: TextStyle(fontSize: 14, color: Colors.black),
                                ),
                                SizedBox(width: 5.0),
                                Row(
                                  children: List.generate(5, (index) {
                                    return Icon(
                                      Icons.star,
                                      color: index < 4 ? Colors.amber : Colors.grey,
                                      size: 20,
                                    );
                                  }),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Chinese food",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15, color: Colors.grey),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
