import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mannys_app/globalCommon.dart';
import 'package:mannys_app/scanner/scannerPage.dart';

class BookHomePage extends StatefulWidget {
  BookHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  BookHomePageState createState() => BookHomePageState();
}

class BookHomePageState extends State<BookHomePage> {
  @override
  Widget build(BuildContext context) {
    String navigationTitle = 'Books Home Page';
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(title: Text(navigationTitle)),
        body: Center(
          child: BookHomeContainer(),
        ));
  }

  Widget BookHomeContainer() {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          toScannerButton(),
        ],
      ),
    );
  }

  Widget toScannerButton() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          height: 40,
          decoration: buttonDecor(),
          child: TextButton(
            onPressed: () => scanner(),
            child: Text(
              'Scanner',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ));
  }

  void scanner(){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ScannerPage(title: 'Sign Up Page')));
  }
}
