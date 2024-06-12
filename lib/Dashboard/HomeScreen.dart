import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../API/api.dart';
import '../Models/AllRestaurantsAPI.dart';
import 'package:http/http.dart' as http;
import '../RestaurantDetails/RestaurantDetails.dart';
import '../Shared_Preferences/shared_preferences_page.dart';

class ToggleIcon extends StatefulWidget {
  final Data restaurant;
  final bool isInitiallyFilled;

  const ToggleIcon(
      {super.key, required this.restaurant, required this.isInitiallyFilled});

  @override
  _ToggleIconState createState() => _ToggleIconState();
}

class _ToggleIconState extends State<ToggleIcon> {
  bool _isFilled = false;

  @override
  void initState() {
    super.initState();
    _isFilled = widget.isInitiallyFilled;
  }

  Future<void> _toggleFavorite() async {
    final prefs = SharedPreferencesPage();
    final accessToken = await prefs.getAccessToken();

    if (accessToken == null) {
      // Handle the case where there is no access token
      print('No access token found');
      return;
    }

    const url = 'http://192.168.10.11:8000/users/favorites';
    final body = jsonEncode({'restaurantId': widget.restaurant.id});

    final response = _isFilled
        ? await http.delete(
            Uri.parse(url),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer $accessToken',
            },
            body: body,
          )
        : await http.post(
            Uri.parse(url),
            headers: {
              'Content-Type': 'application/json',
              'Authorization': 'Bearer $accessToken',
            },
            body: body,
          );

    if (response.statusCode == 200) {
      setState(() {
        _isFilled = !_isFilled;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:
              Text(_isFilled ? 'Added to favorites' : 'Removed from favorites'),
        ),
      );
      // Optionally update the saved screen here
    } else {
      print('Failed to update favorite status: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleFavorite,
      child: _isFilled
          ? SvgPicture.asset(
              'assets/svgIcons/filledHeart.svg',
              width: 24,
              height: 24,
            )
          : SvgPicture.asset(
              'assets/svgIcons/emptyHeart.svg',
              width: 24,
              height: 24,
            ),
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<Data> restaurantListModel = [];
  List<Data> searchlistModel = [];
  List<int> favoriteRestaurantIds = [];
  TextEditingController search_Controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    fetchRestaurants();
    fetchFavoriteRestaurants();
  }

  Future<void> fetchRestaurants() async {
    var response = await http.get(Uri.parse('$baseURL/restaurants'));
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var restaurants = AllRestaurantsApi.fromJson(data);
      setState(() {
        restaurantListModel = restaurants.data ?? [];
        searchlistModel = restaurantListModel;
      });
      print('Fetched ${restaurantListModel.length} restaurants');
    } else {
      print("Failed to load restaurants: ${response.statusCode}");
    }
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
      Uri.parse('$baseURL:8000/users/favorites'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $accessToken',
      },
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        favoriteRestaurantIds =
            (data as List).map((json) => (json['id'] as num).toInt()).toList();
      });
    } else {
      print('Failed to fetch favorite restaurants: ${response.statusCode}');
    }
  }

  void searchFunction(String searchKey) {
    setState(() {
      searchlistModel = restaurantListModel
          .where((restaurant) =>
              restaurant.name!.toLowerCase().contains(searchKey.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 20),
              child: TextFormField(
                controller: search_Controller,
                onChanged: searchFunction,
                decoration: InputDecoration(
                  prefixIcon: Icon(size: 25, Icons.search, color: Colors.grey),
                  suffixIcon: IconButton(
                    onPressed: () {
                      search_Controller.clear();
                      setState(() {
                        searchlistModel = restaurantListModel;
                      });
                    },
                    icon: Icon(Icons.cancel, size: 20, color: Colors.grey),
                  ),
                  hintText: 'Search',
                  labelText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 1.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Expanded(
              child: restaurantListModel.isEmpty
                  ? Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: searchlistModel.length,
                      itemBuilder: (context, index) {
                        var restaurant = searchlistModel[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TopNavigationBarManu(
                                        restaurant: restaurant,
                                      )),
                            );
                          },
                          child: Padding(
                            padding:
                                EdgeInsets.only(right: 10, left: 10, top: 10),
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
                                          loadingBuilder: (BuildContext context,
                                              Widget child,
                                              ImageChunkEvent?
                                                  loadingProgress) {
                                            if (loadingProgress == null) {
                                              return child;
                                            }
                                            return Center(
                                              child: CircularProgressIndicator(
                                                value: loadingProgress
                                                            .expectedTotalBytes !=
                                                        null
                                                    ? loadingProgress
                                                            .cumulativeBytesLoaded /
                                                        (loadingProgress
                                                                .expectedTotalBytes ??
                                                            1)
                                                    : null,
                                              ),
                                            );
                                          },
                                          errorBuilder:
                                              (context, error, stackTrace) {
                                            return Center(
                                                child: Text(
                                                    'Failed to load image'));
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          restaurant.name ?? "No Name",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25,
                                              color: Colors.green),
                                        ),
                                        ToggleIcon(
                                          restaurant: restaurant,
                                          isInitiallyFilled:
                                              favoriteRestaurantIds
                                                  .contains(restaurant.id),
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
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                        SizedBox(width: 5.0),
                                        Row(
                                          children: List.generate(5, (index) {
                                            return Icon(
                                              Icons.star,
                                              color: index < 4
                                                  ? Colors.amber
                                                  : Colors.grey,
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
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.grey),
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
            ),
          ],
        ),
      ),
    );
  }
}
