import 'package:flutter/material.dart';

Widget horizontalList(String title, Widget item, int count, double height) {
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [        
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 3),
          child: (
            Text(
              title, 
              style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)
            )
          )
        ),
        const SizedBox(height: 10),
        Container(
          height: height,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: count,
            itemBuilder: (context, index) {
              return item;
            }
          ),
        )
      ],
    )
  );
}