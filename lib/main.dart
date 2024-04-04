import 'package:flutter/material.dart';
import 'package:eataly/Home.dart';
import 'package:eataly/Bookings.dart';
import 'package:eataly/searchBurger.dart';
import 'package:eataly/featuredCardsBookings.dart';
import 'package:eataly/featuredCardsReviews.dart';
import 'package:eataly/featuredCardsMenu.dart';
import 'package:eataly/featuredCardsDetails.dart';
import 'package:eataly/featuredCardsPhotos.dart';
import 'package:eataly/Profile.dart';
import 'components/topNavigationBar.dart';
import 'package:eataly/splashscreen.dart';
import 'package:eataly/bookingRewardsScreen.dart';
import 'package:eataly/loyaltyRewardsScreen.dart';
import 'package:eataly/giftVouchersScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      //home: Home(),
      //home: SearchResults(),
      //home: Bookings(),
      //home: Reviews(),
      //home: Menus(),
      //home: Photos(),
      //home: Details(),
      //home: TopNavigationBarManu(),
      home: SplashScreen(),
      //home: BottomNavigationBarMenu(),
      //home: GiftVoucherScreen(),
      //home: Profile(),
      //home: loyaltyRewardsScreen(),
      //home: bookingRewardsScreen(),
    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Home Page"),
    ),
    body: const Center(
      child: Text("This is the new home page!"),
    ),
  );
}
