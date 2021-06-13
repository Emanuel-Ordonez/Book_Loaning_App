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
        Row(
          children: [
            Expanded(
              child: Image.asset(
                'assets/images/loginImage.jpg',
                width: double.maxFinite,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ]
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Icon(
                Icons.favorite_border,
                color: Colors.pink,
                size: 24.0,
                semanticLabel: 'label to announce',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Icon(
                Icons.send_sharp,
                color: Colors.black,
                size: 24.0,
              ),
            ),
          ] 
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                'description will go here'
              ),
            ),
          ]
        ),
      ]
    ),
  );
}
