import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      userDetails(),
      Container(),
    ]);
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
            child: Text('motto data should be attaches'),
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