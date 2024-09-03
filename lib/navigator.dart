import 'package:flutter/material.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.yellow[700],
            ),
            child: const Text(
              'MomHive Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: const Icon(Icons.group),
            title: const Text('Groups'),
            onTap: () {
              Navigator.pushNamed(context, '/groups');
            },
          ),
          ListTile(
            leading: const Icon(Icons.library_books),
            title: const Text('Library'),
            onTap: () {
              Navigator.pushNamed(context, '/library');
            },
          ),
          ListTile(
            leading: const Icon(Icons.support),
            title: const Text('Mentorship'),
            onTap: () {
              Navigator.pushNamed(context, '/mentorship');
            },
          ),
          ListTile(
            leading: const Icon(Icons.event),
            title: const Text('Events'),
            onTap: () {
              Navigator.pushNamed(context, '/events');
            },
          ),
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('Messages'),
            onTap: () {
              Navigator.pushNamed(context, '/messages');
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
    );
  }
}
