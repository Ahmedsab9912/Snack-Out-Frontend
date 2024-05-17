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
                padding: EdgeInsets.only(left: 10.0),
                child: ClipOval(
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      'assets/images/eddie.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   width: 8,
              // ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Eddi Markson',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(' has added you a'),
                      ),
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
                    padding: EdgeInsets.only(right: 220),
                    child: Text('Party'),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: ClipOval(
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      'assets/images/romanov.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   width: 8,
              // ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Romanov',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 36),
                        child: Text(' has added you a'),
                      ),
                      Container(
                        height: 30,
                        width: 68,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                            child: Text(
                          'Add',
                          style: TextStyle(color: Colors.white),
                        )),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 210),
                    child: Text('Party'),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: ClipOval(
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      'assets/images/baghBlueIcon.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   width: 8,
              // ),
              Column(
                children: [
                  Row(
                    children: [
                      // Padding(
                      //   padding: EdgeInsets.only(left: 10),
                      //   child: Text(
                      //     'Eddi Markson',
                      //     style: TextStyle(fontWeight: FontWeight.bold),
                      //   ),
                      // ),
                      Padding(
                        padding: EdgeInsets.only(right: 10, left: 10),
                        child: Text('You have a Booking in about '),
                      ),
                      // Container(
                      //   height: 30,
                      //   width: 68,
                      //   decoration: BoxDecoration(
                      //       color: Colors.green,
                      //       borderRadius: BorderRadius.circular(5)),
                      //   child: Center(
                      //       child: Text(
                      //     'Accept',
                      //     style: TextStyle(color: Colors.white),
                      //   )),
                      // )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 90),
                    child: Text('Half an hour'),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 12),
            child: Text(
              'Yesterday',
              style: TextStyle(fontSize: 19, color: Colors.green),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: ClipOval(
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      'assets/images/eddie.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   width: 8,
              // ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Eddi Markson',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Text(' has added you a'),
                      ),
                      Container(
                        height: 30,
                        width: 68,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 208, 208, 208),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                            child: Text(
                          'Accepted',
                          style: TextStyle(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold),
                        )),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 220),
                    child: Text('Party'),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: ClipOval(
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      'assets/images/romanov.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   width: 8,
              // ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Romanov',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 36),
                        child: Text(' has added you a'),
                      ),
                      Container(
                        height: 30,
                        width: 68,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                            child: Text(
                          'Add',
                          style: TextStyle(color: Colors.white),
                        )),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 210),
                    child: Text('Party'),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: ClipOval(
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      'assets/images/baghBlueIcon.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   width: 8,
              // ),
              Column(
                children: [
                  Row(
                    children: [
                      // Padding(
                      //   padding: EdgeInsets.only(left: 10),
                      //   child: Text(
                      //     'Eddi Markson',
                      //     style: TextStyle(fontWeight: FontWeight.bold),
                      //   ),
                      // ),
                      Padding(
                        padding: EdgeInsets.only(right: 10, left: 10),
                        child: Text('You have a Booking in about '),
                      ),
                      // Container(
                      //   height: 30,
                      //   width: 68,
                      //   decoration: BoxDecoration(
                      //       color: Colors.green,
                      //       borderRadius: BorderRadius.circular(5)),
                      //   child: Center(
                      //       child: Text(
                      //     'Accept',
                      //     style: TextStyle(color: Colors.white),
                      //   )),
                      // )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 90),
                    child: Text('Half an hour'),
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
