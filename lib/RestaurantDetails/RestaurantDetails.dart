// ignore: file_names
import 'package:eataly/BookingScreens/featuredCardsBookings.dart';
import 'package:eataly/RestaurantFeaturesScreens/featuredCardsDetails.dart';
import 'package:eataly/RestaurantFeaturesScreens/featuredCardsMenu.dart';
import 'package:eataly/RestaurantFeaturesScreens/featuredCardsPhotos.dart';
import 'package:eataly/RestaurantFeaturesScreens/featuredCardsReviews.dart';
import 'package:flutter/material.dart';

import '../Models/AllRestaurantsAPI.dart';

class TopNavigationBarManu extends StatelessWidget {
  final Data restaurant;

  TopNavigationBarManu({required this.restaurant, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 40,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Restaurant Details',
            style: TextStyle(
              color: Color(0xFF00C572),
              fontSize: 22,
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 0, // Adjust flex as needed to control the size
              child: SizedBox(
                width: 340,
                height: 125,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          50), // Adjust the radius as needed
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmVzdGF1cmFudHxlbnwwfHwwfHx8MA%3D%3D',
                                        height: 48,
                                        width: 48,
                                        fit: BoxFit.cover,
                                        loadingBuilder: (BuildContext context,
                                            Widget child,
                                            ImageChunkEvent? loadingProgress) {
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
                                              child:
                                                  Text('Failed to load image'));
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 16),
                                SizedBox(
                                  width: 204,
                                  child: Text(
                                    restaurant.name ?? "No Name",
                                    style: TextStyle(
                                      color: Color(0xFF00C572),
                                      fontSize: 19,
                                      fontFamily: 'Lato',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      restaurant.address ?? "No Name",
                                      style: TextStyle(
                                        color: Color(0xFF888888),
                                        fontSize: 14,
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 12),
                                // Transform(
                                //   transform: Matrix4.identity()
                                //     ..translate(0.0, 0.0)
                                //     ..rotateZ(1.57),
                                //   child: Container(
                                //     width: 10,
                                //     decoration:  ShapeDecoration(
                                //       shape: RoundedRectangleBorder(
                                //         side: BorderSide(
                                //           width: 1,
                                //           strokeAlign:
                                //               BorderSide.strokeAlignCenter,
                                //           color: Color(0xFF888888),
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // ),
                                Text(
                                  '2.2 mi away',
                                  style: TextStyle(
                                    color: Color(0xFF888888),
                                    fontSize: 14,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w400,
                                    height: 0,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  '4.5',
                                  style: TextStyle(
                                    color: Color(0xFF222222),
                                    fontSize: 14,
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                                const SizedBox(width: 4),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 16,
                                      height: 16,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xFFFFCC1B),
                                        shape: StarBorder(
                                          points: 5,
                                          innerRadiusRatio: 0.38,
                                          pointRounding: 0,
                                          valleyRounding: 0,
                                          rotation: 0,
                                          squash: 0,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    Container(
                                      width: 16,
                                      height: 16,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xFFFFCC1B),
                                        shape: StarBorder(
                                          points: 5,
                                          innerRadiusRatio: 0.38,
                                          pointRounding: 0,
                                          valleyRounding: 0,
                                          rotation: 0,
                                          squash: 0,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    Container(
                                      width: 16,
                                      height: 16,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xFFFFCC1B),
                                        shape: StarBorder(
                                          points: 5,
                                          innerRadiusRatio: 0.38,
                                          pointRounding: 0,
                                          valleyRounding: 0,
                                          rotation: 0,
                                          squash: 0,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    Container(
                                      width: 16,
                                      height: 16,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xFFFFCC1B),
                                        shape: StarBorder(
                                          points: 5,
                                          innerRadiusRatio: 0.38,
                                          pointRounding: 0,
                                          valleyRounding: 0,
                                          rotation: 0,
                                          squash: 0,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 4),
                                    Container(
                                      width: 16,
                                      height: 16,
                                      decoration: const ShapeDecoration(
                                        color: Color(0xFFD9D9D9),
                                        shape: StarBorder(
                                          points: 5,
                                          innerRadiusRatio: 0.38,
                                          pointRounding: 0,
                                          valleyRounding: 0,
                                          rotation: 0,
                                          squash: 0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(width: 16),
                        const Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 24,
                              height: 24,
                              child: Stack(children: []),
                            ),
                            SizedBox(width: 8),
                            SizedBox(
                              width: 24,
                              height: 24,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 24,
                                    height: 24,
                                    child: Stack(children: []),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
            TabBar(
              isScrollable: false,
              labelColor: Color(0xFF00B288), // Selected tab text color
              unselectedLabelColor: Colors.grey, // Unselected tab text color
              indicatorColor:
                  Color(0xFF00B288), // Underline color for selected tab
              tabs: const [
                Tab(text: 'Bookings'),
                Tab(text: 'Reviews'),
                Tab(text: 'Photos'),
                Tab(text: 'Menu'),
                Tab(text: 'Details'),
              ],
            ),
            const Expanded(
              // Content that changes based on the selected tab
              child: TabBarView(
                children: [
                  Bookings(),
                  Reviews(),
                  Photos(),
                  MenuListWidget(),
                  Details(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
