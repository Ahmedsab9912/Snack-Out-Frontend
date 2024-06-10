import 'package:flutter/material.dart';

class AddFriendsProfile extends StatefulWidget {
  const AddFriendsProfile({super.key});

  @override
  State<AddFriendsProfile> createState() => _AddFriendsProfileState();
}

class _AddFriendsProfileState extends State<AddFriendsProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Friends'),
      ),
    );
  }
}
