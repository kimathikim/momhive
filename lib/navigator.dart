import 'package:flutter/material.dart';
import 'package:momhive/home_page.dart';
import 'package:momhive/groups.dart';
import 'package:momhive/event.dart';
import 'package:momhive/resources.dart';
import 'package:momhive/messages.dart';

void navigateToPage(int index, BuildContext context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) {
        switch (index) {
          case 0:
            return const HomePage();
          case 1:
            return const GroupsPage();
          case 2:
            return const EventsPage();
          case 3:
            return const LibraryPage();
          case 4:
            return const MessagesPage();
          default:
            return const HomePage();
        }
      },
    ),
  );
}

class MyNavigationBar extends StatefulWidget {
  final Function(int) onTap;

  const MyNavigationBar({super.key, required this.onTap});

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.onTap(index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: _onItemTapped,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.group,
            color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
          ),
          label: 'Groups',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.event,
            color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
          ),
          label: 'Events',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.library_books,
            color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
          ),
          label: 'Library',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.message,
            color: _selectedIndex == 4 ? Colors.blue : Colors.grey,
          ),
          label: 'Messages',
        ),
      ],
    );
  }
}
