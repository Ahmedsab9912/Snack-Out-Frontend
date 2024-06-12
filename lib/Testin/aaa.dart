// import 'package:eataly/BookingScreens/featuredCardsBookings.dart';
// import 'package:eataly/Models/AllRestaurantsAPI.dart';
// import 'package:eataly/RestaurantFeaturesScreens/featuredCardsDetails.dart';
// import 'package:eataly/RestaurantFeaturesScreens/featuredCardsMenu.dart';
// import 'package:eataly/RestaurantFeaturesScreens/featuredCardsPhotos.dart';
// import 'package:eataly/RestaurantFeaturesScreens/featuredCardsReviews.dart';
// import 'package:flutter/material.dart';
// import 'package:eataly/Models/AllRestaurantsAPI.dart';
// import 'package:eataly/RestaurantFeaturesScreens/featuredCardsMenu.dart';
//
// class TopNavigationBarManu extends StatelessWidget {
//   final Data restaurant;
//
//   TopNavigationBarManu({Key? key, required this.restaurant}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,  // Adjust the number of tabs if needed
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text(restaurant.name ?? "Restaurant Details"),
//         ),
//         body: Column(
//           children: [
//             Expanded(
//               flex: 0, // Adjust flex as needed to control the size
//               child: SizedBox(
//                 width: 340,
//                 height: 125,
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Row(
//                       mainAxisSize: MainAxisSize.min,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                         Column(
//                           mainAxisSize: MainAxisSize.min,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             Row(
//                               mainAxisSize: MainAxisSize.min,
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Container(
//                                   width: 44,
//                                   height: 44,
//                                   clipBehavior: Clip.antiAlias,
//                                   decoration: ShapeDecoration(
//                                     shape: RoundedRectangleBorder(
//                                       side: BorderSide(
//                                         width: 2,
//                                         strokeAlign: BorderSide.strokeAlignOutside,
//                                         color: Colors.white,
//                                       ),
//                                       borderRadius: BorderRadius.circular(6),
//                                     ),
//                                   ),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.min,
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     crossAxisAlignment: CrossAxisAlignment.center,
//                                     children: [
//                                       Container(
//                                         width: 44,
//                                         height: 44,
//                                         decoration: ShapeDecoration(
//                                           image: DecorationImage(
//                                             image: AssetImage(
//                                                 'assets/images/baghBlueIcon.png'
//                                             ),
//                                             fit: BoxFit.fill,
//                                           ),
//                                           shape: RoundedRectangleBorder(
//                                             borderRadius: BorderRadius.circular(24),
//                                           ),
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(width: 16),
//                                 SizedBox(
//                                   width: 204,
//                                   child: Text(
//                                     restaurant.name ?? "Restaurant Name",
//                                     style: TextStyle(
//                                       color: Color.fromARGB(255, 0, 2, 1),
//                                       fontSize: 16,
//                                       fontFamily: 'Lato',
//                                       fontWeight: FontWeight.w700,
//                                       height: 0,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(height: 8),
//                             Row(
//                               mainAxisSize: MainAxisSize.min,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Row(
//                                   mainAxisSize: MainAxisSize.min,
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       '\$\$\$',
//                                       style: TextStyle(
//                                         color: Color(0xFF888888),
//                                         fontSize: 14,
//                                         fontFamily: 'Lato',
//                                         fontWeight: FontWeight.w400,
//                                         height: 0,
//                                       ),
//                                     ),
//                                     SizedBox(width: 4),
//                                     Text(
//                                       '.',
//                                       style: TextStyle(
//                                         color: Color(0xFF888888),
//                                         fontSize: 14,
//                                         fontFamily: 'Lato',
//                                         fontWeight: FontWeight.w400,
//                                         height: 0,
//                                       ),
//                                     ),
//                                     SizedBox(width: 4),
//                                     Text(
//                                       'The Desi Cuisine',
//                                       style: TextStyle(
//                                         color: Color(0xFF888888),
//                                         fontSize: 14,
//                                         fontFamily: 'Lato',
//                                         fontWeight: FontWeight.w400,
//                                         height: 0,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(width: 16),
//                                 Transform(
//                                   transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(1.57),
//                                   child: Container(
//                                     width: 10,
//                                     decoration: ShapeDecoration(
//                                       shape: RoundedRectangleBorder(
//                                         side: BorderSide(
//                                           width: 1,
//                                           strokeAlign: BorderSide.strokeAlignCenter,
//                                           color: Color(0xFF888888),
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(width: 16),
//                                 Text(
//                                   '2.2 mi away',
//                                   style: TextStyle(
//                                     color: Color(0xFF888888),
//                                     fontSize: 14,
//                                     fontFamily: 'Lato',
//                                     fontWeight: FontWeight.w400,
//                                     height: 0,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             SizedBox(height: 8),
//                             Row(
//                               mainAxisSize: MainAxisSize.min,
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   '4.5',
//                                   style: TextStyle(
//                                     color: Color(0xFF222222),
//                                     fontSize: 14,
//                                     fontFamily: 'Lato',
//                                     fontWeight: FontWeight.w700,
//                                     height: 0,
//                                   ),
//                                 ),
//                                 SizedBox(width: 4),
//                                 Row(
//                                   mainAxisSize: MainAxisSize.min,
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       width: 16,
//                                       height: 16,
//                                       decoration: ShapeDecoration(
//                                         color: Color(0xFFFFCC1B),
//                                         shape: StarBorder(
//                                           points: 5,
//                                           innerRadiusRatio: 0.38,
//                                           pointRounding: 0,
//                                           valleyRounding: 0,
//                                           rotation: 0,
//                                           squash: 0,
//                                         ),
//                                       ),
//                                     ),
//                                     SizedBox(width: 4),
//                                     Container(
//                                       width: 16,
//                                       height: 16,
//                                       decoration: ShapeDecoration(
//                                         color: Color(0xFFFFCC1B),
//                                         shape: StarBorder(
//                                           points: 5,
//                                           innerRadiusRatio: 0.38,
//                                           pointRounding: 0,
//                                           valleyRounding: 0,
//                                           rotation: 0,
//                                           squash: 0,
//                                         ),
//                                       ),
//                                     ),
//                                     SizedBox(width: 4),
//                                     Container(
//                                       width: 16,
//                                       height: 16,
//                                       decoration: ShapeDecoration(
//                                         color: Color(0xFFFFCC1B),
//                                         shape: StarBorder(
//                                           points: 5,
//                                           innerRadiusRatio: 0.38,
//                                           pointRounding: 0,
//                                           valleyRounding: 0,
//                                           rotation: 0,
//                                           squash: 0,
//                                         ),
//                                       ),
//                                     ),
//                                     SizedBox(width: 4),
//                                     Container(
//                                       width: 16,
//                                       height: 16,
//                                       decoration: ShapeDecoration(
//                                         color: Color(0xFFFFCC1B),
//                                         shape: StarBorder(
//                                           points: 5,
//                                           innerRadiusRatio: 0.38,
//                                           pointRounding: 0,
//                                           valleyRounding: 0,
//                                           rotation: 0,
//                                           squash: 0,
//                                         ),
//                                       ),
//                                     ),
//                                     SizedBox(width: 4),
//                                     Container(
//                                       width: 16,
//                                       height: 16,
//                                       decoration: ShapeDecoration(
//                                         color: Color(0xFFD9D9D9),
//                                         shape: StarBorder(
//                                           points: 5,
//                                           innerRadiusRatio: 0.38,
//                                           pointRounding: 0,
//                                           valleyRounding: 0,
//                                           rotation: 0,
//                                           squash: 0,
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             // Display restaurant images
//             Expanded(
//               flex: 1,  // Adjust flex as needed to control the size
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: restaurant.images.length,
//                 itemBuilder: (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Image.network(
//                       restaurant.images[index],
//                       fit: BoxFit.cover,
//                       width: 150,
//                       height: 150,
//                     ),
//                   );
//                 },
//               ),
//             ),
//             // Other widgets and code...
//           ],
//         ),
//       ),
//     );
//   }
// }
