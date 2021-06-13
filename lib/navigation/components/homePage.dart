import 'package:flutter/material.dart';

Widget homePage() {
  return Column(
    children: [
      cardview(),
      cardview(),
    ]
  );
}

Widget cardview() {
  return Container(
    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
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
        Image.asset(
          'assets/images/loginImage.jpg',
          width: double.maxFinite,
          height: 150,
          fit: BoxFit.cover,
        ),
      ]
    ),
  );
}
