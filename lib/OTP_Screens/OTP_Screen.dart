import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  final String email;
  final String phoneNumber;

  const OTPScreen({Key? key, required this.email, required this.phoneNumber}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Center(child: Text('Email: ${widget.email}')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.orange
                  ),
                  child: Center(child: Text('Send OTP')),
                ),
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.orange
                  ),
                  child: Center(child: Text('Verify')),
                )
              ],
            ),
            Center(child: Text('Phone Number: ${widget.phoneNumber}')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.orange
                  ),
                  child: Center(child: Text('Send OTP')),
                ),
                Container(
                  height: 30,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Colors.orange
                  ),
                  child: Center(child: Text('Verify')),
                )
              ],
            ),
            // Add OTP input fields and logic here
          ],
        ),
      ),
    );
  }
}
