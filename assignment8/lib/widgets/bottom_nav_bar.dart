import 'package:assignment8/pages/calls_page.dart';
import 'package:assignment8/pages/chats_page.dart';
import 'package:assignment8/pages/communities_page.dart';
import 'package:assignment8/pages/updates_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    ChatsPage(),
    UpdatesPage(),
    CommunitiesPage(),
    CallsPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.update,
            ),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.users,
            ),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.phone,
            ),
            label: 'Calls',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
      ),
    );
  }
}
