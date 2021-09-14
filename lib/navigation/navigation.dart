import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:mannys_app/navigation/components/inventoryPage.dart';
import 'package:mannys_app/navigation/components/homePage.dart';
import 'package:mannys_app/navigation/components/profilePage.dart';
import 'package:mannys_app/navigation/components/searchPage.dart';

class NavigationPage extends StatefulWidget {
  NavigationPage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  String navigationTitle = 'Home';
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Container(
      color: Color.fromARGB(65, 100, 150, 100),
      child: homePage(),
    ),
    Container(
      color: Color.fromARGB(65, 100, 150, 100),
      child: searchPage(),
    ),
    Container(
      color: Color.fromARGB(65, 100, 150, 100),
      child: inventoryPage(),
    ),
    Container(
      color: Color.fromARGB(65, 100, 150, 100),
      child: profilePage(),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0)
        navigationTitle = 'Home';
      else if (index == 1)
        navigationTitle = 'Search';
      else if (index == 2)
        navigationTitle = 'History';
      else if (index == 3) navigationTitle = 'Profile';
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
      appBar: AppBar(title: Text(navigationTitle)),
      body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.archive_outlined),
            label: 'Home',
            backgroundColor: Colors.indigoAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.indigoAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory_2_outlined),
            label: 'Inventory',
            backgroundColor: Colors.indigoAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.portrait_rounded),
            label: 'Profile',
            backgroundColor: Colors.indigoAccent,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[600],
        onTap: _onItemTapped,
      ),
    );
  }
}
