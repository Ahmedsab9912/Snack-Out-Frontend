// ignore: file_names
import 'package:eataly/BookingScreens/Bookings.dart';
import 'package:eataly/Dashboard/HomeScreen.dart';
import 'package:eataly/NotificationScreen/NotificationPage.dart';
import 'package:eataly/Profile/Profile.dart';
import 'package:flutter/material.dart';
import 'package:eataly/SavedScreen/savedscreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Login&SignupScreens/loginscreen.dart';
import '../PartyScreens/Party-Screen.dart';
import '../Profile/AddFriends.dart';
import '../Profile/Edit-Profile.dart';
import '../app_theme/app_theme.dart';
import '../PartyScreens/AddFriendsScreen.dart';

class BottomNavigationBarMenu extends StatefulWidget {
  const BottomNavigationBarMenu({super.key});

  @override
  State<BottomNavigationBarMenu> createState() =>
      _BottomNavigationBarMenuState();
}

class _BottomNavigationBarMenuState extends State<BottomNavigationBarMenu> {

  Future<void> _showLoadingDialog(BuildContext context) {
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return Dialog(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(),
                SizedBox(width: 10),
                Text("Please Wait"),
              ],
            ),
          ),
        );
      },
    );
  }

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

  int _selectedIndex = 0;
  final Color _selectedColor = AppColors.buttonColor;

  final List<String> _iconPaths = [
    'assets/images/home.png',
    'assets/images/saved.png',
    'assets/images/party.png',
    'assets/images/bookings.png',
    'assets/images/profile.png',
  ];

  final List<String> _selectedIconPaths = [
    'assets/images/homepurple.png',
    'assets/images/savedpurple.png',
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
        appBar: _appBar(),
        drawer: _drawer(),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            Homescreen(),
            SavedScreen(),
            PartyDemoScreen(),
            Booking(),
            Profile(),
          ],
        ),
        bottomNavigationBar: TabBar(
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          indicatorColor: AppColors.buttonColor,
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
                      : Colors.grey,
                ),
                child: Text(
                  _tabTitles[index],
                  style: TextStyle(
                    color: _selectedIndex == index ? _selectedColor : Colors.grey,
                    fontSize: 10,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w400,
                    height: 0.17,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  AppBar? _appBar() {
    if (_selectedIndex != 4) {
      return AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 200.0),
            child: Text(
              name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Notificationpage(),
                  ),
                );
              },
              child: Image.asset(
                'assets/images/notificationpurple.png',
                width: 34,
                height: 34,
              ),
            ),
          ),
        ],
      );
    } else {
      return AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        flexibleSpace: Image(
          // color: Colors.white.withOpacity(0.9), // Set the opacity here
          image: AssetImage('assets/images/bg.png'),
          fit: BoxFit.fitWidth,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 5.0, right: 5.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddFriendsProfile(),
                  ),
                );
              },
              child: Image.asset(
                'assets/images/addfriend.png',
                width: 50,
                height: 50,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10.0, top: 20),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditProfile(),
                  ),
                );
              },
              child: Image.asset(
                'assets/images/settings.png',
                width: 50,
                height: 50,
              ),
            ),
          ),
        ],
      );
    }
  }

  Drawer _drawer() {
    return Drawer(
      backgroundColor: AppColors.buttonColor,
      child: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: DrawerHeader(
                decoration: BoxDecoration(
                  // color: Colors.purple[300],
                ),
                child: Text(
                  'Hello , $name',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            // Add other items here
            Expanded(
              child: ListView(
                children: [
                  InkWell(
                    onTap: () {
                      // // Show loading dialog
                      // _showLoadingDialog(context);
                    },
                    child: ListTile(
                      leading: Icon(Icons.map, color: Colors.white,),
                      title: Text('Addresses', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
                    ),
                  ),
                  Divider(),
                  InkWell(
                    onTap: () {
                      // // Show loading dialog
                      // _showLoadingDialog(context);
                    },
                    child: ListTile(
                      leading: Icon(Icons.shop, color: Colors.white,),
                      title: Text('Orders', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
                    ),
                  ),
                  Divider(),
                  InkWell(
                    onTap: () {
                      // // Show loading dialog
                      // _showLoadingDialog(context);
                    },
                    child: ListTile(
                      leading: Icon(Icons.label, color: Colors.white,),
                      title: Text('Offer & promo', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
                    ),
                  ),
                  Divider(),
                  InkWell(
                    onTap: () {
                      // // Show loading dialog
                      // _showLoadingDialog(context);
                    },
                    child: ListTile(
                      leading: Icon(Icons.edit_note_sharp, color: Colors.white,),
                      title: Text('Privacy policy', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {
                // // Show loading dialog
                // _showLoadingDialog(context);
              },
              child: ListTile(

                title: Row(
                  children: [
                    Text('Logout', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),),
                    SizedBox(width: 10.0,),
                    Icon(Icons.logout, color: Colors.white,)
                  ],
                ),
                onTap: () async {
                  final prefs = await SharedPreferences.getInstance();
                  await prefs.setBool('isLoggedIn', false); // Log the user out

                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                      (Route<dynamic> route) => false,
                );
              },
            ),
          ),
        ],
      ),
    );
  }


}
