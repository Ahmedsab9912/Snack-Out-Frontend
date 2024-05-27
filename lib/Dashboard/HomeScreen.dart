import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../BookingScreens/Bookings.dart';
import '../Models/AllRestaurantsAPI.dart';
import 'package:http/http.dart' as http;
import '../NotificationScreen/NotificationPage.dart';
import '../PartyScreens/partydemoscreen.dart';
import '../Profile.dart';
import '../SavedScreen/savedscreen.dart';


class ToggleIcon extends StatefulWidget {
  const ToggleIcon({super.key});

  @override
  _ToggleIconState createState() => _ToggleIconState();
}

class _ToggleIconState extends State<ToggleIcon> {
  bool _isFilled = false; // Initial state of the icon

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isFilled = !_isFilled; // Toggle the state on tap
        });
      },
      child: _isFilled
          ? SvgPicture.asset(
        'assets/svgIcons/filledHeart.svg', // Path to the filled SVG icon
        width: 24,
        height: 24,
      )
          : SvgPicture.asset(
        'assets/svgIcons/emptyHeart.svg', // Path to the unfilled SVG icon
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
  TextEditingController search_Controller = TextEditingController();


  @override
  void initState() {
    super.initState();
    fetchRestaurants();
  }

  Future<void> fetchRestaurants() async {
    var response = await http.get(Uri.parse('http://192.168.43.54:8000/restaurants'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var restaurants = AllRestaurantsApi.fromJson(data);
      setState(() {
        restaurantListModel = restaurants.data ?? [];
        searchlistModel = restaurantListModel;
      });
      print('Fetched ${restaurantListModel.length} restaurants');
    } else {
      // Handle the error
      print("Failed to load restaurants: ${response.statusCode}");
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
      // appBar: AppBar(
      //   title: SafeArea(
      //     child: Column(
      //       children: [
      //         Padding(
      //           padding: EdgeInsets.only(top: 20.0),
      //           child: SizedBox(
      //             width: double.infinity,
      //             child: Row(
      //               mainAxisSize: MainAxisSize.min,
      //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //               crossAxisAlignment: CrossAxisAlignment.center,
      //               children: [
      //                 Padding(
      //                   padding: EdgeInsets.only(bottom: 10),
      //                   child: Column(
      //                     mainAxisSize: MainAxisSize.min,
      //                     mainAxisAlignment: MainAxisAlignment.start,
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: [
      //                       Text(
      //                         'Good Morning',
      //                         style: TextStyle(
      //                           color: Color(0xFF222222),
      //                           fontSize: 18,
      //                           fontFamily: 'Lato',
      //                           fontWeight: FontWeight.w500,
      //                           height: 0,
      //                         ),
      //                       ),
      //                       SizedBox(height: 2),
      //                       Text(
      //                         'John Doe',
      //                         style: TextStyle(
      //                           color: Color(0xFF222222),
      //                           fontSize: 26,
      //                           fontFamily: 'Lato',
      //                           fontWeight: FontWeight.w600,
      //                           height: 0,
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //                 Row(
      //                   children: [
      //                     InkWell(
      //                       onTap: () {
      //                         Navigator.push(
      //                           context,
      //                           MaterialPageRoute(
      //                             builder: (context) => Notificationpage(),
      //                           ),
      //                         );
      //                       },
      //                       child: Icon(
      //                         Icons.shopping_cart,
      //                         color: Color.fromRGBO(0, 178, 136, 1),
      //                         size: 30,
      //                       ),
      //                     ),
      //                     InkWell(
      //                       onTap: () {
      //                         Navigator.push(
      //                           context,
      //                           MaterialPageRoute(
      //                             builder: (context) => Notificationpage(),
      //                           ),
      //                         );
      //                       },
      //                       child: Icon(
      //                         Icons.notifications,
      //                         color: Color.fromRGBO(0, 178, 136, 1),
      //                         size: 30,
      //                       ),
      //                     ),
      //                   ],
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 20),
              child: TextFormField(
                controller: search_Controller,
                onChanged: searchFunction,
                decoration: InputDecoration(
                  prefixIcon: Icon(size: 35, Icons.search, color: Colors.grey),
                  suffixIcon: IconButton(
                    onPressed: () {
                      search_Controller.clear();
                      setState(() {
                        searchlistModel = restaurantListModel;
                      });
                    },
                    icon: Icon(Icons.cancel, color: Colors.grey),
                  ),
                  hintText: 'Search',
                  labelText: 'Search',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
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
                  return Padding(
                    padding: EdgeInsets.only(right: 10, left: 10, top: 10),
                    child: Card(
                      elevation: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Image from the internet
                            Center(
                              child: Image.network(
                                'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmVzdGF1cmFudHxlbnwwfHwwfHx8MA%3D%3D',
                                height: 220,
                                width: 350,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Restaurant name
                                Text(
                                  restaurant.name ?? "No Name",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,color: Colors.green),
                                ),
                                // Like icon
                                ToggleIcon(),
                              ],
                            ),
                            SizedBox(height: 5),
                            // Restaurant city
                            Text(
                              restaurant.city ?? "No City",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(height: 5),
                            // Restaurant state
                            Text(
                              restaurant.address ?? "No State",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(height: 10),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                // Rating text
                                Text(
                                  "Rating: 4",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black),
                                ),
                                // Star rating
                                Row(
                                  children: List.generate(5, (starIndex) {
                                    return Icon(
                                      Icons.star,
                                      color: starIndex < 4
                                          ? Colors.yellow
                                          : Colors.grey,
                                    );
                                  }),
                                ),
                              ],
                            ),
                          ],
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
