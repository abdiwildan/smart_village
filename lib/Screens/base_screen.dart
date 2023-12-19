import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'newest_screen.dart';
import 'profile_screen.dart';
import 'service_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
   HomeScreen(),
   NewestScreen(),
   ProfileScreen(),
   ServiceScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Theme.of(context).primaryColorDark,
        currentIndex: _selectedIndex,
        onTap:(int index) {
          setState(() {
            _selectedIndex= index;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: ('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.whatshot_outlined),
            label:('Newest'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_sharp),
            label: ('Profile')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build_circle_outlined),
            label: ('Service')
          ),
          ],
      )
    );
  }
}