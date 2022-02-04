import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'drawer_items.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
            ),
            child: Center(
              child: Text('Logo', style: kLogoStyle),
            ),
          ),
          DrawerItems(
            name: 'My Company',
            icon: Icons.home_outlined,
            onPressed: () {},
          ),
          DrawerItems(
            name: 'Services',
            icon: Icons.volunteer_activism,
            onPressed: () {},
          ),
          DrawerItems(
            name: 'About Us',
            icon: Icons.info_outlined,
            onPressed: () {},
          ),
          DrawerItems(
            name: 'Contact Us',
            icon: Icons.connect_without_contact_sharp,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
