import 'package:flutter/material.dart';

class Notificationpage extends StatefulWidget {
  const Notificationpage({super.key});

  @override
  State<Notificationpage> createState() => _NotificationpageState();
}

class _NotificationpageState extends State<Notificationpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notification',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Text(
              'Today',
              style: TextStyle(fontSize: 19, color: Colors.green),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 12.0),
                child: ClipOval(
                  child: Container(
                    width: 60,
                    height: 60,
                    child: Image.asset(
                      'assets/images/eddie.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Eddi Markson',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(' has added you a'),
                      SizedBox(width: 40),
                      Container(
                        height: 30,
                        width: 68,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                            child: Text(
                          'Accept',
                          style: TextStyle(color: Colors.white),
                        )),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 270),
                    child: Text('Party'),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
