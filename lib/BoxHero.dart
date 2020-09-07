import 'package:clone_boxhero/Screen/HomeScreen/HomeScreen.dart';
import 'package:clone_boxhero/Screen/Screen/InOutScreen.dart';
import 'package:clone_boxhero/Screen/Screen/SettingScreen.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'Screen/Screen/GoodsScreen.dart';

class BoxHero extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<BoxHero> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    GoodsScreen(),
    InOutScreen(),
    SettingScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        onTap: _onItemTapped,
        unselectedLabelStyle: TextStyle(color: Colors.black),
        currentIndex: _selectedIndex,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        elevation: 0.0,
        unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text('홈'),
          ),
          BottomNavigationBarItem(
              icon: Icon(LineAwesomeIcons.box), title: Text('제품')),
          BottomNavigationBarItem(
              icon: Icon(Icons.cached), title: Text('입고/출고')),
          BottomNavigationBarItem(
              icon: Icon(LineAwesomeIcons.cog), title: Text('설정')),
        ],
      ),
    );
  }
}
