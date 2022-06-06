import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const <Widget>[
        Text(
          'Programas', 
          style: TextStyle(color: Colors.white, fontSize: 16)
        ),
        Text(
          'Peliculas', 
          style: TextStyle(color: Colors.white, fontSize: 16)
        ),
        Text(
          'Mi lista', 
          style: TextStyle(color: Colors.white, fontSize: 16)
        )
      ],
    );
  }
}