import 'package:flutter/material.dart';
import 'package:netflix_clone/components/moviesView/SquareMovie.dart';
import 'package:netflix_clone/components/moviesView/circleMovie.dart';
import 'package:netflix_clone/components/moviesView/horizontalList.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [        
        horizontalList('Avances', CircleMovie(), 10, 100),
        horizontalList('Programas sobre viajes', SquareMovie(), 10, 150),
        horizontalList('Tendencias', SquareMovie(), 10, 150),
        horizontalList('Mi lista', SquareMovie(), 10, 150),
      ],
    );
  }
}