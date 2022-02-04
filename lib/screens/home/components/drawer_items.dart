import 'package:flutter/material.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems({
    Key? key,
    required this.name,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);
  final String name;
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => onPressed,
      leading: Icon(icon, color: Colors.green),
      title: Text(
        name,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black87,
        ),
      ),
    );
  }
}
