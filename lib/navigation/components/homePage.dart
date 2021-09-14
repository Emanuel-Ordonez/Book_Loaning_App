import 'package:flutter/material.dart';

Widget homePage() {
  return SingleChildScrollView(
    child: Column(
      children: [
        cardview(),
        cardview(),
        cardview(),
        cardview(),
        cardview(),
        cardview(),
        cardview(),
        cardview(),
        cardview(),
        cardview(),
        cardview(),
        cardview(),
        cardview(),
        cardview(),
        cardview(),
    ])
  );
}

Widget cardview() {
  return Container(
    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
    child: Column(children: [
      Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: [
          Text(
            'username',
            style: TextStyle(fontSize: 20),
          ),
        ]),
      ),
      Container(
        constraints: BoxConstraints(
          minHeight: 100,
          minWidth: double.infinity,
          maxHeight: 400,
        ),
        child: Image.asset(
          'assets/images/loginImage.jpg',
          fit: BoxFit.fitWidth,
        ),
      ),
      Row(children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: Icon(
            Icons.favorite_border,
            color: Colors.black,
            size: 26.0,
            semanticLabel: 'label to announce',
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: Icon(
            Icons.insert_comment_outlined,
            color: Colors.black,
            size: 24.0,
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
      ]),
      Row(children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text('description will go here'),
        ),
      ]),
    ]),
  );
}
