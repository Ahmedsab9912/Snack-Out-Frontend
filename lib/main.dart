import 'package:eataly/Provider/AddToCartProvider.dart';
import 'package:eataly/components/bottomNavigatorBar.dart';
import 'package:flutter/material.dart';
import 'package:eataly/Login&SignupScreens/splashscreen.dart';
import 'package:provider/provider.dart';

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
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarMenu(),
    );
  }
}
