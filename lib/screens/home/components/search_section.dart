import 'package:flutter/material.dart';

import '../../../constants.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        border: Border.all(color: kBlack54),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(Icons.search, color: kBlack54),
          hintText: 'Search here',
        ),
      ),
    );
  }
}
