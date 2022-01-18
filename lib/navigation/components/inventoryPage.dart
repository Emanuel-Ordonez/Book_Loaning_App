import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget inventoryPage() {
  return Container (
    //child: Column(children: [
      //CupertinoSearchTextField(),
      //Container(
        child: foundSearch(),
      //),
    //])
  );
}

Widget foundSearch() {
  return SingleChildScrollView(
      child: Column(children: [
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
        cardview(),
        cardview(),
        cardview(),
      ])
  );
}

Widget cardview() {
  return Container(
     padding: const EdgeInsets.all(10),
     child: Row(children: [
       Text(
         'Book Title',
         style: TextStyle(fontSize: 20),
       ),
     ]),
  );
}
