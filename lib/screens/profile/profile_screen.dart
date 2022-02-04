import 'package:flutter/material.dart';
import 'package:homepage/screens/profile/components/profile_body_section.dart';

import 'components/profile_picture.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = '/profile';
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: ListView(
        children: const [
          ProfilePicture(),
          SizedBox(height: 20),
          ProfileBodySection(),
        ],
      ),
    );
  }
}
