import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      //while have username on appBar
      appBar: AppBar(title: Text('Username should be attached')),
      
      body: Center(
        child: Column(children: [
          userDetails(),
          Container(),
        ]),
      ),
    );
  }

  Widget userDetails() {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          topRowUserDetail(),
          Container(
            padding: const EdgeInsets.only(top: 10),
            width: double.maxFinite,
            child: Text(
              'motto data should be attaches'

            ),
          ),
        ],
      ),
    );
  }

  Widget topRowUserDetail() {
    return Row(children: [
      Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: Color.fromARGB(175, 0, 0, 0),
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Colors.blue,
          ),
        ),
        child: Image.asset(
          'assets/images/loginImage.jpg',
          width: double.maxFinite,
          height: double.maxFinite,
        ),
      ),
      Container(
        padding: const EdgeInsets.only(left: 20),
        child: Row(children: [
          userFollowing('Workouts', 60),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: userFollowing('Following', 1010),
          ),
          userFollowing('Followers', 210),
        ]),
      ),
    ]);
  }

  Widget userFollowing(String title, int num) {
    return Column(
      children: [
        Text(
          title,
        ),
        Text(
          num.toString(),
        ),
      ],
    );
  }



}