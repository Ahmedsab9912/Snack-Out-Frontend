import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../giftVouchersScreen.dart';
import '../loyaltyRewardsScreen.dart';
import '../BookingScreens/bookingRewardsScreen.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  Future<String> _getProfileImage() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('profile_image') ?? 'assets/images/profileDp.png'; // Default image if not found
  }

  Future<String> _getProfileName() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('profile_name') ?? 'Freddie Markson'; // Default name if not found
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    // Container at the top with background image
                    Stack(
                      alignment: Alignment.center,
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 200,
                          width: constraints.maxWidth, // Use LayoutBuilder constraints
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/images/bg.png"), // Replace with your image path
                              fit: BoxFit.cover, // Cover the container bounds
                            ),
                          ),
                        ),
                        Positioned(
                          top: 200 - 77, // Half the height of the avatar to overlap
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: FutureBuilder<String>(
                              future: _getProfileImage(),
                              builder: (context, snapshot) {
                                if (snapshot.connectionState == ConnectionState.waiting) {
                                  return CircleAvatar(
                                    radius: 77,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 75,
                                      backgroundImage: AssetImage('assets/images/profileDp.png'),
                                    ),
                                  );
                                } else if (snapshot.hasError) {
                                  return CircleAvatar(
                                    radius: 77,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 75,
                                      backgroundImage: AssetImage('assets/images/profileDp.png'),
                                    ),
                                  );
                                } else {
                                  return CircleAvatar(
                                    radius: 77,
                                    backgroundColor: Colors.white,
                                    child: CircleAvatar(
                                      radius: 75,
                                      backgroundImage: snapshot.data!.startsWith('http')
                                          ? NetworkImage(snapshot.data!)
                                          : AssetImage(snapshot.data!) as ImageProvider,
                                    ),
                                  );
                                }
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 88),
                    FutureBuilder<String>(
                      future: _getProfileName(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.waiting) {
                          return Text(
                            'Loading...',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          );
                        } else if (snapshot.hasError) {
                          return Text(
                            'Error',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          );
                        } else {
                          return Text(
                            snapshot.data ?? 'Freddie Markson',
                            style: TextStyle(
                              fontFamily: 'Lato',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          );
                        }
                      },
                    ),
                    // A row with three gift voucher containers
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: constraints.maxWidth > 600
                          ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: _buildGiftVoucherContainers(context),
                      )
                          : Column(
                        children: _buildGiftVoucherContainers(context),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: const Text(
                        'Booking History',
                        style: TextStyle(
                          color: Colors.teal,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.all(16),
                      width: constraints.maxWidth * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/junoon.png'), // Replace with your asset image
                              const SizedBox(width: 8),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Junoon Heritage - Pure Desi Experience',
                                      style: TextStyle(
                                        color: Colors.teal,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    RichText(
                                      text: const TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Booked on 31 Jan\nPaid ',
                                            style: TextStyle(color: Colors.grey),
                                          ),
                                          TextSpan(
                                            text: '\$200',
                                            style: TextStyle(color: Colors.black),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: constraints.maxWidth * 0.9,
                            height: 44,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.teal,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              onPressed: () {
                                // Handle Re-Book action
                              },
                              child: const Text('Re-Book'),
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '4.5',
                                style: TextStyle(fontSize: 16),
                              ),
                              SizedBox(width: 4),
                              Icon(Icons.star, color: Colors.amber, size: 20),
                              Icon(Icons.star, color: Colors.amber, size: 20),
                              Icon(Icons.star, color: Colors.amber, size: 20),
                              Icon(Icons.star, color: Colors.amber, size: 20),
                              Icon(Icons.star_half, color: Colors.amber, size: 20),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  List<Widget> _buildGiftVoucherContainers(BuildContext context) {
    return [
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GiftVoucherScreen()),
          );
        },
        child: _buildGiftVoucherContainer('assets/images/gift.png', 'Gift', 'Vouchers', Color(0xFFF8BBD0)),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => loyaltyRewardsScreen()),
          );
        },
        child: _buildGiftVoucherContainer('assets/images/loyalty.png', 'Loyalty', 'Rewards', Color(0xFFF8BBD0)),
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => bookingRewardsScreen()),
          );
        },
        child: _buildGiftVoucherContainer('assets/images/booking.png', 'Booking', 'Rewards', Color(0xFFFFE4B0)),
      ),
    ];
  }

  Widget _buildGiftVoucherContainer(String imagePath, String title1, String title2, Color bgColor) {
    return Container(
      width: 103.0,
      height: 116.0,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            imagePath,
            width: 24.0,
            height: 24.0,
            color: Colors.black54,
          ),
          const SizedBox(height: 24),
          Text(
            title1,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
          ),
          Text(
            title2,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
          ),
        ],
      ),
    );
  }
}
