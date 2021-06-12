import 'package:flutter/material.dart';

Widget textField(String inputType) {
  return Padding(
      padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Color.fromARGB(175, 250, 250, 250),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
            hintText: inputType,
            border: InputBorder.none,
          ),
        ),
      )
  );
}

Widget topLabel(String title) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 28,
        ),
      ),
    );
  }