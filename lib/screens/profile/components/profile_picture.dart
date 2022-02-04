import 'package:flutter/material.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      height: 140,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              shape: BoxShape.circle,
              image: const DecorationImage(
                image: AssetImage('assets/images/Photo2.JPG'),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 125,
            child: SizedBox(
              height: 40,
              width: 50,
              child: Container(
                margin: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.black26),
                ),
                child: IconButton(
                  tooltip: 'Upload photo',
                  color: Colors.green,
                  onPressed: () {},
                  icon: const Icon(Icons.camera_alt_outlined),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
