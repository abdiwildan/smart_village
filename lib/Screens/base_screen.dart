import 'package:flutter/material.dart';
import 'account_screen.dart';
import 'data_screen.dart';
import 'home_screen.dart';
import 'profile_screen.dart';
import 'service_screen.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});
  static const routeName = '/home';

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
   HomeScreen(),
   DataScreen(),
   ProfileScreen(),
   ServiceScreen(),
   AccountScreen()

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
            icon: Icon(Icons.analytics_outlined),
            label:('Data'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_outlined),
            label: ('Profil Desa')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_outlined),
            label: ('Service')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box_outlined),
            label: ('Account')
          ),

        ],
      )
    );
  }
}