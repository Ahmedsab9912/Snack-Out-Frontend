// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../giftVouchersScreen.dart';
import '../loyaltyRewardsScreen.dart';
import '../BookingScreens/bookingRewardsScreen.dart';

class Profile extends StatelessWidget {
   Profile({Key? key}) : super(key: key);



  Future<String> _getProfileImage() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('profileImage') ?? ''; // Default image if not found
  }


  //THIS IS THE SHAREDPREFENCES
  String name = '';

   Future<String> _getProfileName() async {
     final prefs = await SharedPreferences.getInstance();
     return prefs.getString('name') ?? 'User'; // Default name if not found
   }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Container at the top with background image
                Stack(
                  alignment: Alignment.center,
                  clipBehavior: Clip
                      .none, // Allow the overlapped part to be visible outside the stack
                  children: [
                    Container(
                      height: 200,
                      width: MediaQuery.of(context)
                          .size
                          .width, // Make width equal to the screen width
                      decoration:  BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/bg.png"), // Replace with your image path
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
                                  backgroundImage: AssetImage(''),
                                ),
                              );
                            } else if (snapshot.hasError) {
                              return CircleAvatar(
                                radius: 77,
                                backgroundColor: Colors.white,
                                child: CircleAvatar(
                                  radius: 75,
                                  backgroundImage: AssetImage(''),
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
                        '...',
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
                        snapshot.data ?? '',
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
                  // Wrap the Row with Padding for spacing from the image container
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment
                        .spaceEvenly, // Even spacing for the containers
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GiftVoucherScreen()),
                          );
                        },
                        child: Container(
                          width: 103.0, // width in logical pixels
                          height: 116.0, // height in logical pixels
                          padding: const EdgeInsets.all(
                              10), // padding for inner space
                          decoration: BoxDecoration(
                            color: const Color(
                                0xFFF8BBD0), // Light pink color from the Material color palette
                            borderRadius:
                                BorderRadius.circular(8), // Rounded corners
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.1), // Shadow color
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: const Offset(
                                    0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              // Replace this with your image asset
                              Image.asset(
                                'assets/images/gift.png',
                                width: 24.0, // Image width
                                height: 24.0, // Image height
                                color: Colors
                                    .black54, // If you want to apply a color filter to the image
                              ),
                              const SizedBox(
                                  height: 24), // Space between image and text
                              Text(
                                'Gift',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0, // Font size for the text
                                ),
                              ),
                              // const SizedBox(
                              //     height: 8), // Space between image and text
                              Text(
                                'Vouchers',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0, // Font size for the text
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => loyaltyRewardsScreen()),
                          );
                        },
                        child: Container(
                          width: 103.0, // width in logical pixels
                          height: 116.0, // height in logical pixels
                          padding: const EdgeInsets.all(
                              10), // padding for inner space
                          decoration: BoxDecoration(
                            color: const Color(
                                0xFFF8BBD0), // Light pink color from the Material color palette
                            borderRadius:
                                BorderRadius.circular(8), // Rounded corners
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.1), // Shadow color
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: const Offset(
                                    0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              // Replace this with your image asset
                              Image.asset(
                                'assets/images/loyalty.png',
                                width: 24.0, // Image width
                                height: 24.0, // Image height
                                color: Colors
                                    .black54, // If you want to apply a color filter to the image
                              ),
                              const SizedBox(
                                  height: 24), // Space between image and text
                              Text(
                                'Loyalty',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0, // Font size for the text
                                ),
                              ),
                              // const SizedBox(
                              //     height: 8), // Space between image and text
                              Text(
                                'Rewards',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0, // Font size for the text
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => bookingRewardsScreen()),
                          );
                        },
                        child: Container(
                          width: 103.0, // width in logical pixels
                          height: 116.0, // height in logical pixels
                          padding: const EdgeInsets.all(
                              10), // padding for inner space
                          decoration: BoxDecoration(
                            color: const Color(
                                0xFFFFE4B0), // Light pink color from the Material color palette
                            borderRadius:
                                BorderRadius.circular(8), // Rounded corners
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black
                                    .withOpacity(0.1), // Shadow color
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: const Offset(
                                    0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              // Replace this with your image asset
                              Image.asset(
                                'assets/images/booking.png',
                                width: 24.0, // Image width
                                height: 24.0, // Image height
                                color: Colors
                                    .black54, // If you want to apply a color filter to the image
                              ),
                              const SizedBox(
                                  height: 24), // Space between image and text
                              const Text(
                                'Booking Rewards',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0, // Font size for the text
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0), // Adjust padding as necessary for alignment
                  child: const Text(
                    'Booking History',
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left, // Align text to the left
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(16),
                  width: 350,
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
                          Image.asset(
                              'assets/images/junoon.png'), // Replace with your asset image
                          const SizedBox(width: 8),
                          Expanded(
                            // Use Expanded to take the remaining space for the text column
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
                                        style: TextStyle(
                                            color: Colors
                                                .grey), // Grey color for the initial part
                                      ),
                                      TextSpan(
                                        text: '\$200',
                                        style: TextStyle(
                                            color: Colors
                                                .black), // Black color for the price
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
                        width: 318, // Logical pixels, not actual device pixels.
                        height: 44, // Logical pixels, not actual device pixels.
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor:
                                Colors.teal, // Text Color (Foreground color)
                            shape: RoundedRectangleBorder(
                              // Define the button's shape
                              borderRadius: BorderRadius.circular(
                                  8), // Reduced corner radius
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
          ),
        ),
      ),
    );
  }
}
