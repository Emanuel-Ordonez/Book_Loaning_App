import 'dart:html';
import 'dart:ui';
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mannys_app/globalCommon.dart';
import 'package:mannys_app/login/common/commonComponents.dart';
import 'package:mannys_app/login/login.dart';


class ScannerPage extends StatefulWidget {
  ScannerPage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  ScannerPageState createState() => ScannerPageState();
}

class ScannerPageState extends State<ScannerPage> {
  @override
  Widget build(BuildContext context) {
    String navigationTitle = 'Scanner Page';
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(title: Text(navigationTitle)),
        body: Center(
          child: ScannerContainer(),
        ));
  }

  Widget ScannerContainer() {
    return Container(
      width: MediaQuery.of(context).size.width * .9,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          scanButton(),
        ],
      ),
    );
  }

  Widget scanButton() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          height: 40,
          decoration: buttonDecor(),
          child: TextButton(
            onPressed: () => barcodeScanner(),
            child: Text(
              'Scanner',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ));
  }

  void barcodeScanner() async {
    // BarcodeDetector barcodeDetector = FirebaseVision.instance.barcodeDetector();
    // var _barCode = await barcodeDetector.detectInImage(myImage);
    // var result = "";

    // for (Barcode barcode in _barCode) {
    //   setState(() {
    //     result = barcode.displayValue;
    //   });
    // }
  }

}
