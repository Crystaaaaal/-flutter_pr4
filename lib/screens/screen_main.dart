import 'package:flutter/material.dart';
import 'package:pr4/screens/screen_column.dart';
import 'package:pr4/screens/screen_listview.dart';
import 'package:pr4/screens/screen_listview_separated.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.view_column), label: 'Column'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'ListView'),
          BottomNavigationBarItem(icon: Icon(Icons.format_list_bulleted), label: 'Separated'),
        ],
      ),
    );
  }
}