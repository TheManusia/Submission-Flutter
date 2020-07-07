import 'package:flutter/material.dart';
import 'package:submission_flutter/information_screen.dart';
import 'package:submission_flutter/report_screen.dart';

import 'home_screen.dart';
import 'stats_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _screen = <Widget>[
    HomeScreen(),
    StatsScreen(),
    ReportScreen(),
    InformationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            title: Text('Stats'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Text('School'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('Information'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blueGrey,
        onTap: _onItemTapped,
      ),
    );
  }
}
