import 'package:eataly/Login&SignupScreens/splashscreen.dart';
import 'package:eataly/Provider/AddToCartProvider.dart';
import 'package:eataly/components/bottomNavigatorBar.dart';
import 'package:flutter/material.dart';
import 'package:eataly/Login&SignupScreens/signupscreen.dart';
import 'package:provider/provider.dart';
import 'package:eataly/Dashboard/HomeScreen.dart';
import 'package:eataly/components/bottomNavigatorBar.dart';

import 'Login&SignupScreens/otpscreen.dart';
import 'OTP_Screens/OTP_Screen_Phone.dart';
import 'app_theme/app_colors.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AddToCartProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.themeData,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      //home: TopNavigationBarManu(),
      //routes: {'/': (context) => const SplashScreen();}
    );
  }
}
