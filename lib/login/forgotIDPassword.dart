import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mannys_app/login/common/commonComponents.dart';
import 'package:mannys_app/login/login.dart';

class ForgotIDPasswordPage extends StatefulWidget {
  ForgotIDPasswordPage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ForgotIDPasswordPageState createState() => _ForgotIDPasswordPageState();
}

class _ForgotIDPasswordPageState extends State<ForgotIDPasswordPage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
          child: Stack(
        children: [
          Align(
            alignment: Alignment(0, 0),
            child: background(),
          ),
          Align(
            alignment: Alignment(0, 0),
            child: forgotIDPasswordContainer(),
          ),
        ],
      )),
    );
  }

  Widget background() {
    return backgroundLogin();
  }

  Widget forgotIDPasswordContainer() {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      decoration: loginBoxDecor(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          label(),
          emailInput(),
          signupButton(),
          bottomLinks(),
        ],
      ),
    );
  }

  Widget label() {
    return topLabel('Forgot ID/Password');
  }

  Widget emailInput() {
    return textField('Email');
  }

  Widget signupButton() {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
        child: Container(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          height: 40,
          decoration: submitButtonDecor(),
          child: TextButton(
            onPressed: () => sendEmail(),
            child: Text(
              'Send Email',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ));
  }

  Widget bottomLinks() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 15),
      child: Center(
        child: Row(children: [
          Expanded(
            child: Center(
              child: RichText(
                text: TextSpan(
                    text: 'Back to login',
                    style: TextStyle(color: Colors.blueAccent),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        backToLogin();
                      }),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  void sendEmail() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => LoginPage(title: 'Login Page')));
  }

  void backToLogin() {
    Navigator.pop(context);
  }
}
