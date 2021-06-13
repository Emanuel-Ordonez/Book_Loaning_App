import 'package:flutter/material.dart';

Widget homePage() {
  return Column(
    children: [
      cardview(),
    ]
  );
}

Widget cardview() {
  return Container(
    color: Colors.amber,
    child: Column(
      children: [
        Row(
          children: [
            Text(
              'username',
              style: TextStyle(fontSize: 20),
            ),
            
          ]
        ),
      ]
    ),
  );
}
