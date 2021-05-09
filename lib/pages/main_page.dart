import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:litelearn/pages/achievements.dart';
import 'package:litelearn/pages/profile.dart';
import 'package:litelearn/pages/courses.dart';

class MainPage extends StatefulWidget {
  final username;

  MainPage({@required this.username});

  @override
  _MainPageState createState() => _MainPageState(username: username);
}

class _MainPageState extends State<MainPage> {
  final username;

  _MainPageState({@required this.username});

  int _selectedIndex = 0;

  List<Widget> _pages() => [
    Courses(username: username),
    Achievements(),
    Profile(username: username)
  ];

  _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = _pages();
    return Scaffold(
      body: Center(
        child: pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
              icon: Icon(LineAwesomeIcons.book),
              label: 'Courses'
          ),
          BottomNavigationBarItem(
              icon: Icon(LineAwesomeIcons.trophy),
              label: 'Achievements'
          ),
          BottomNavigationBarItem(
              icon: Icon(LineAwesomeIcons.user),
              label: 'Profile'
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTap,
      ),
    );
  }
}
