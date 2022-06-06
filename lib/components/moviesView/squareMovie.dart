import 'package:flutter/material.dart';

class SquareMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 150,
          width: 100,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.purple,
              width: 2
            )
          ),
          child: (
            Image.network(
              'https://play-lh.googleusercontent.com/c-B1nIg5yZ3nVU39a6Jw2SbVwsoglWz_tQ4IKvBcTpFE6TiHi0vDcb9LAu_BKFKv3mELTA',
              fit: BoxFit.cover,
            )
          )
        ),
        const SizedBox(width: 10)
      ],
    );
  }
}