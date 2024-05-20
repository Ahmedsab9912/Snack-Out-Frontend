import 'package:flutter/material.dart';

class Addtocartpage extends StatefulWidget {
  const Addtocartpage({super.key});

  @override
  State<Addtocartpage> createState() => _AddtocartpageState();
}

class _AddtocartpageState extends State<Addtocartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reservation Detailes'),
      ),
    );
  }
}
