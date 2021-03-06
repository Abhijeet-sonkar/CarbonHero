import 'package:carbon_emission/screens/naturalGas.dart';
import 'package:carbon_emission/screens/televisionScreen.dart';
import 'package:carbon_emission/screens/transportScreen.dart';
import 'package:carbon_emission/widget/badge.dart';
import 'package:carbon_emission/widget/dashBoard.dart';
import 'package:flutter/material.dart';
import 'package:carbon_emission/screens/electricityScreen.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MainScreen extends StatefulWidget {
  static const routeName = '/MainScreen';
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff281627),
      body:NaturalGas(),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bar_chart,
            ),
            title: Text('LeaderBoard'),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.leaderboard,
              ),
              title: Text('Chart'))
        ],
      ),
    );
  }
}
