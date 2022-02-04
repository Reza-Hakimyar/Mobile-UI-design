import 'package:flutter/material.dart';
import 'package:homepage/screens/home/components/search_section.dart';
import 'package:homepage/widgets/story_builder.dart';
import 'package:homepage/widgets/user_posts.dart';

import '../../../constants.dart';

class BodySection extends StatelessWidget {
  const BodySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> _image = [
      'assets/images/8.jpeg',
      'assets/images/1.jpg',
      'assets/images/2.jpeg',
      'assets/images/3.jpeg',
      'assets/images/4.jpg',
      'assets/images/5.jpeg',
      'assets/images/6.jpeg',
      'assets/images/7.jpeg',
    ];
    final List<String> _post = [
      'assets/images/9.jpeg',
      'assets/images/10.png',
      'assets/images/11.jpeg',
      'assets/images/12.jpeg',
      'assets/images/13.jpeg',
      'assets/images/14.jpeg',
      'assets/images/15.jpeg',
      'assets/images/7.jpeg',
    ];
    final List list = [
      'Ali',
      'Sahar',
      'Nargis',
      'Shabnam',
      'Soraya',
      'Maryam',
      'Nusrin',
      'Angela',
    ];
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Your Inspiration', style: kTextStyle2),
              const SearchSection(),
              Text(
                'New Movies',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -1,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                height: 180,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _image.length,
                    itemBuilder: (context, int index) {
                      return StoryBuilder(imageUrl: _image[index]);
                    }),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10.0)),
          child: const Text(
            'Recent Movies',
            style: TextStyle(
              color: Colors.red,
              fontSize: 13,
              fontWeight: FontWeight.w500,
              letterSpacing: 0,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: _image.length,
              itemBuilder: (context, index) {
                return UserPosts(imageUrl: _post[index]);
              }),
        )
      ],
    );
  }
}
