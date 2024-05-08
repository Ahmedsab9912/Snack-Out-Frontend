import 'package:eataly/Bookings.dart';
import 'package:eataly/Home.dart';
import 'package:eataly/Profile.dart';
import 'package:flutter/material.dart';
import 'package:eataly/partyscreen.dart';
import 'package:eataly/savedscreen.dart';

class BottomNavigationBarMenu extends StatefulWidget {
  const BottomNavigationBarMenu({super.key});

  @override
  State<BottomNavigationBarMenu> createState() =>
      _BottomNavigationBarMenuState();
}

class _BottomNavigationBarMenuState extends State<BottomNavigationBarMenu> {
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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 100, // Ensuring the AppBar is transparent and elevated
          backgroundColor: Colors.transparent,
          elevation: 0,
          // Placing the container in the AppBar's leading to align it at the top
          title: Container(
            width: double.infinity,
            height: 100,
            padding: const EdgeInsets.only(
              top: 25,
              left: 20,
              right: 20,
              bottom: 0,
            ),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.800000011920929),
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
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
                            SizedBox(height: 2),
                            Text(
                              'John Doe',
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
                      Image(
                        width: 24,
                        height: 24,
                        image: AssetImage('assets/images/notification.png'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Home(),
            SavedScreen(),
            PartyScreen(),
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
          indicatorColor: const Color(0xFF00B288),
          tabs: List.generate(5, (index) {
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
