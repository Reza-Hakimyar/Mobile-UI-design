import 'package:flutter/material.dart';
import 'package:homepage/constants.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification'),
      ),
      body: const Center(
        child: Text('No Notification', style: kTextStyle2),
      ),
    );
  }
}
