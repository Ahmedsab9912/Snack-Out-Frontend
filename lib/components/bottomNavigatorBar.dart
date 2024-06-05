// ignore: file_names
import 'package:eataly/BookingScreens/Bookings.dart';
import 'package:eataly/Dashboard/HomeScreen.dart';
import 'package:eataly/NotificationScreen/NotificationPage.dart';
import 'package:eataly/Profile/Profile.dart';
import 'package:flutter/material.dart';
import 'package:eataly/SavedScreen/savedscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../PartyScreens/partydemoscreen.dart';

class BottomNavigationBarMenu extends StatefulWidget {
  const BottomNavigationBarMenu({super.key});

  @override
  State<BottomNavigationBarMenu> createState() =>
      _BottomNavigationBarMenuState();
}

class _BottomNavigationBarMenuState extends State<BottomNavigationBarMenu> {
  //THIS IS THE SHAREDPREFENCES
  String name = '';

  @override
  void initState() {
    super.initState();
    _loadUsername();
  }

  Future<void> _loadUsername() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name') ?? 'UserName';
    });
  }

  int _selectedIndex = 0; // Keeps track of the selected tab index
  // Define your custom color
  final Color _selectedColor = const Color(0xFF00B288);

  // Paths for the unselected icons
  final List<String> _iconPaths = [
    'assets/images/home.png',
    'assets/images/saved.png',
    'assets/images/party.png',
    'assets/images/bookings.png',
    'assets/images/profile.png',
  ];

  // Paths for the selected icons
  final List<String> _selectedIconPaths = [
    'assets/images/homeGreen.png',
    'assets/images/savedGreen.png',
    'assets/images/partyGreen.png',
    'assets/images/bookingsGreen.png',
    'assets/images/profileGreen.png',
  ];
  final List<String> _tabTitles = [
    'Home',
    'Saved',
    'Party',
    'Booking',
    'Profile'
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        // TOP APP BAR
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 2, // Ensuring the AppBar is transparent and elevated
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize:
                Size.fromHeight(80), // Adjust the preferred size as needed
            child: Container(
              padding: EdgeInsets.only(
                top: 0,
                left: 20,
                right: 20,
                bottom: 0,
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    style: BorderStyle.solid,
                    color: Colors.grey, // Change the color of the border
                    width: 1.0, // Change the width of the border
                  ),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Good Morning',
                                style: TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 14,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              Text(
                                name ?? 'User',
                                style: TextStyle(
                                  color: Color(0xFF222222),
                                  fontSize: 22,
                                  fontFamily: 'Lato',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Notificationpage(),
                                  ),
                                );
                              },
                              child: Image(
                                width: 34,
                                height: 34,
                                image: AssetImage(
                                    'assets/images/shoppingcart.png'),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Notificationpage(),
                                  ),
                                );
                              },
                              child: Image(
                                width: 34,
                                height: 34,
                                image: AssetImage(
                                    'assets/images/notification.png'),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Homescreen(),
            SavedScreen(),
            PartyDemoScreen(),
            Booking(), // Make sure this matches the class name from your import
            Profile(),
          ],
        ),
        bottomNavigationBar: TabBar(
          onTap: (index) {
            // Update the selected index on tap
            setState(() {
              _selectedIndex = index;
            });
          },
          indicatorColor: Color(0xFF00B288),
          tabs: List.generate(
            5,
            (index) {
              return Tab(
                icon: ImageIcon(
                  AssetImage(
                    _selectedIndex == index
                        ? _selectedIconPaths[index]
                        : _iconPaths[index],
                  ),
                  color: _selectedIndex == index
                      ? _selectedColor
                      : Colors.grey, // Apply color to icons if needed
                ),
                child: Text(
                  _tabTitles[index],
                  style: TextStyle(
                    color:
                        _selectedIndex == index ? _selectedColor : Colors.grey,
                    fontSize: 10,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w400,
                    height: 0.17, // Custom selected text color
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
