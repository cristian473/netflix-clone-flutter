import 'package:flutter/material.dart';

class CircleMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(110),
            border: Border.all(
              color: Colors.yellow,
              width: 2
            )
          ),
          child: ClipOval(
            child: Image.network(
              'https://p4.wallpaperbetter.com/wallpaper/300/754/486/captain-america-captain-america-civil-war-iron-man-hd-wallpaper-preview.jpg',
              fit: BoxFit.cover,
            )
          ),
        ),
        const SizedBox(width: 10)
      ],
    );
  }
}