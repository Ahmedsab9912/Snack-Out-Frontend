import 'package:eataly/PartyScreens/AddFriendsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class StartPartyScreen extends StatefulWidget {
  const StartPartyScreen({super.key});

  @override
  State<StartPartyScreen> createState() => _StartPartyScreenState();
}

class _StartPartyScreenState extends State<StartPartyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Your Party',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Image.asset(
              'assets/images/notification.png',
              width: 30,
              height: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Party Code:',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                '123456',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF00C572)),
              ),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Center(
            child: Container(
              child: Image.asset(
                'assets/images/allfriends.png',
                width: 190,
                height: 60,
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            '5 Friends Joined the Party',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset(
                  'assets/images/Ellipsegreen.png',
                  width: 30,
                  height: 30,
                ),
              ),
              Text(
                'Naveed Joined',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w200),
              ),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 230),
            child: Text(
              'Host Controls',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF00C572)),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Party on the Host',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  Radio<String>(
                    value: 'on',
                    groupValue: 'on',
                    onChanged: (value) {
                      // Handle radio button selection
                    },
                    activeColor: Color(0xFF00C572),
                  ),
                ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Go Dutch',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  Radio<String>(
                    value: 'off',
                    groupValue: 'on',
                    onChanged: (value) {
                      // Handle radio button selection
                    },
                    activeColor: Color(0xFF00C572),
                  ),
                ]),
          ),
          Container(
            child: Image.asset(
              'assets/images/Group.png',
              width: 220,
              height: 170,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            height: 40,
            width: 280,
            decoration: BoxDecoration(
                color: Color(0xFF00B288),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text('Make a Booking',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
          ),
          SizedBox(
            height: 13.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: Container(
                              width: 60,
                              height: 60,
                              child: Image.asset(
                                'assets/images/you.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  4), // Add some space between the image and text
                          Text(
                            'You',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Color(0xFF00B288),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: Container(
                              width: 60,
                              height: 60,
                              child: Image.asset(
                                'assets/images/eddie.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  4), // Add some space between the image and text
                          Text(
                            'Eddie',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Color(0xFF00B288),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: Container(
                              width: 60,
                              height: 60,
                              child: Image.asset(
                                'assets/images/audrey.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  4), // Add some space between the image and text
                          Text(
                            'Audrey',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Color(0xFF00B288),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: Container(
                              width: 60,
                              height: 60,
                              child: Image.asset(
                                'assets/images/romanov.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  4), // Add some space between the image and text
                          Text(
                            'Romanov',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Color(0xFF00B288),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: Container(
                              width: 60,
                              height: 60,
                              child: Image.asset(
                                'assets/images/person4.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                              height:
                                  4), // Add some space between the image and text
                          Text(
                            'Jack',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            color: Color(0xFF00B288),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddFriendsPage(),
                        ),
                      );
                    },
                    child: ClipOval(
                      child: Container(
                        width: 60,
                        height: 60,
                        child: Image.asset(
                          'assets/images/Avatars4.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 225.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    _showBottomSheet(
                        context); // Show the bottom sheet when clicked
                  },
                  child: Row(
                    children: [
                      Text(
                        'Lets Talk!',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset(
                          'assets/images/Vector.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// FUNTION USED FOR BOTTOM SHEET
void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 90),
              child: Row(
                children: [
                  Text(
                    '5 Friends Joined the Party',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.green[800],
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 10.0,
            // ),
            Center(child: Text('Naveed Joined')),
            SizedBox(
              height: 0.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  ClipOval(
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        'assets/images/eddie.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            'Eddie',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          height: 40,
                          width: 110,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(235, 246, 182, 242),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Hey Everone !',
                              style: TextStyle(),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          height: 50,
                          width: 110,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(235, 246, 182, 242),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Whats the Plan ?',
                                style: TextStyle(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  ClipOval(
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        'assets/images/romanov.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            'Sarah',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          height: 50,
                          width: 110,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(235, 246, 182, 242),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Lets go to a Burger Place',
                                style: TextStyle(),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          height: 50,
                          width: 110,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(235, 246, 182, 242),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Whats the Plan ?',
                                style: TextStyle(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  width: 300,
                  height: 70, // Increase the height as needed
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      // validator: (formValidate) {
                      //   if (formValidate.toString().isEmpty) {
                      //     return 'Please enter some text';
                      //   }
                      //   return null;
                      // },
                      // focusNode: foucusEmail,
                      // onFieldSubmitted: (_) {
                      //   FocusScope.of(context).requestFocus(focusPassword);
                      // },
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Type Message Here',
                        hintStyle:
                            TextStyle(color: Colors.black54, fontSize: 15.0),
                        fillColor: Colors.grey[200],
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white12,
                          ),
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 12.0,
                            horizontal: 10.0), // Adjust the padding as needed
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 5.0,
                ),
                ClipOval(
                  child: Container(
                    width: 50,
                    height: 50,
                    child: Image.asset(
                      'assets/images/you.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
