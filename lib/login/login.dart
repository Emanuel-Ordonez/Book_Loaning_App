import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../navigation/navigation.dart';

class MyLoginPage extends StatefulWidget {
  MyLoginPage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
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
            child: backgroundImage(),
          ),
          Align(
            alignment: Alignment(0, 0),
            child: loginContainer(),
          ),
        ],
      )),
    );
  }

  Widget backgroundImage() {
    return Image.asset(
      'assets/images/loginImage.jpg',
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    );
  }

  Widget loginContainer() {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
        color: Color.fromARGB(230, 250, 250, 250),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          topLabel(),
          usernameInput(),
          passwordInput(),
          loginButton(),
          bottomLinks(),
        ],
      ),
    );
  }

  Widget topLabel() {
    var labelText = "Manny's App";
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        labelText,
        style: TextStyle(
          color: Colors.black,
          fontSize: 32,
        ),
      ),
    );
  }

  Widget usernameInput() {
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
              hintText: 'Username',
              border: InputBorder.none,
            ),
          ),
        ));
  }

  Widget passwordInput() {
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
              hintText: 'Password',
              border: InputBorder.none,
            ),
          ),
        ));
  }

  Widget loginButton() {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
            ),
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(25),
          ),
          child: TextButton(
            onPressed: () => doSomthing(),
            child: Text(
              'Sign in',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ));
  }

  Widget bottomLinks() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Center(
        child: Row(children: [
          Text(
            'Forgot ID/Password?',
            style: TextStyle(color: Colors.blueAccent),
          ),
          Expanded(
            child: Center(
              child: Text(
                'Sign up',
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  void doSomthing() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => NavigationPage(title: 'Navigation Page')));
  }
}
