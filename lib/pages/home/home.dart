import 'package:flutter/material.dart';
import 'package:netflix_clone/pages/home/sections/body.dart';
import 'package:netflix_clone/pages/home/sections/header.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Header(),
          Body()
        ]
      ),
      bottomNavigationBar: bottomNav(),
    );
  }

  BottomNavigationBar bottomNav() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          tooltip: 'Inicio'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          tooltip: 'Inicio'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          tooltip: 'Inicio'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          tooltip: 'Inicio'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          tooltip: 'Inicio'
        ),
      ],
    )
  }
}