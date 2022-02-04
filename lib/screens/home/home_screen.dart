import 'package:flutter/material.dart';
import 'package:homepage/screens/home/components/drawer_screen.dart';
import 'package:homepage/screens/home/components/notification_screen.dart';
import 'package:homepage/screens/profile/profile_screen.dart';

import '../../constants.dart';
import 'components/body_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerScreen(),
      backgroundColor: kScaffoldBC,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('LOGO', style: kLogoStyle),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const NotificationScreen(),
                      ),
                    );
                  },
                  icon: const Icon(Icons.notifications_none),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(ProfileScreen.routeName);
                  },
                  icon: const Icon(Icons.person_outline),
                ),
              ],
            ),
          ],
        ),
      ),
      body: const BodySection(),
    );
  }
}
