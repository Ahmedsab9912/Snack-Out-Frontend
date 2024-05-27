import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeP extends StatefulWidget {
  const HomeP({Key? key}) : super(key: key);

  @override
  _HomePState createState() => _HomePState();
}

class _HomePState extends State<HomeP> {
  String? data;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    // print('CONNECTION ESTABLISHING');
    final response = await http.get(Uri.parse('http://10.0.2.2:8000/'));
    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body);
        // print('Data' + data!);
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Testing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Data From API Below',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            if (data != null)
              Text(
                data!,
                style: TextStyle(fontSize: 16.0),
              )
            else
              CircularProgressIndicator(), // Show loading indicator while data is being fetched
          ],
        ),
      ),
    );
  }
}
