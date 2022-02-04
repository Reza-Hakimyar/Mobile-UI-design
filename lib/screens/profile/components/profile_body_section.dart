import 'package:flutter/material.dart';

class ProfileBodySection extends StatelessWidget {
  const ProfileBodySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildCard('My Account', Icons.person_outline, () {}),
        _buildCard('Notification', Icons.notifications_none, () {}),
        _buildCard('Settings', Icons.settings_outlined, () {}),
        _buildCard('Help Center', Icons.help_outline, () {}),
        _buildCard('Sign Out', Icons.exit_to_app_rounded, () {}),
      ],
    );
  }

  Padding _buildCard(String title, IconData iconData, Function function) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Card(
        elevation: 1,
        child: ListTile(
          leading: Icon(iconData),
          title: Text(title),
          trailing: IconButton(
            onPressed: () => function,
            icon: const Icon(Icons.arrow_forward_ios),
          ),
        ),
      ),
    );
  }
}
