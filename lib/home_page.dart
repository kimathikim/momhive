import 'package:flutter/material.dart';
import 'package:momhive/groups.dart';
import 'package:momhive/resources.dart';
import 'package:momhive/messages.dart';
import 'package:momhive/event.dart';
import 'package:momhive/mentorship.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MomHive',
      theme: ThemeData(
        primaryColor: const Color(0xFFF7C843),
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          headlineSmall: TextStyle(
            color: Colors.grey[800],
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          bodyMedium: TextStyle(
            color: Colors.grey[800],
            fontSize: 16,
          ),
          bodyLarge: TextStyle(
            color: Colors.grey[800],
            fontSize: 18,
          ),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF7C843),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      home: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(150),
            child: Container(
              width: double.infinity,
              height: 150,
              decoration: const BoxDecoration(
                color: Color(0xFFF7C843),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
              child: AppBar(
                title: const Text('MomHive',
                    style: TextStyle(color: Colors.white)),
                centerTitle: true,

                actions: [
                  IconButton(
                    icon: const Icon(Icons.notifications),
                    onPressed: () {
                      // Handle notifications action
                    },
                  ),
                ],
                backgroundColor:
                    Colors.transparent, // Make AppBar background transparent

                elevation: 0, // Remove AppBar shadow
                //
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF7C843),
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(20),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  Text(
                    'Explore',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 10),
                  GridView.count(
                    crossAxisCount: 2,
                    shrinkWrap: true,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 3 / 2,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      HomeCard(
                        title: 'Groups',
                        description: 'You have joined 5 groups',
                        icon: Icons.group,
                        color: Colors.yellow[600]!,
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GroupsPage()),
                          );
                        },
                      ),
                      HomeCard(
                        title: 'Articles',
                        description: '5 new resources available',
                        icon: Icons.library_books,
                        color: Colors.yellow[600]!,
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LibraryPage()),
                          );
                        },
                      ),
                      HomeCard(
                        title: 'Mentorship',
                        description: 'You are mentoring 2 moms',
                        icon: Icons.school,
                        color: Colors.yellow[600]!,
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MentoringPage()),
                          );
                        },
                      ),
                      HomeCard(
                        title: 'Events',
                        description: 'Next: Book Club Meeting',
                        icon: Icons.event,
                        color: Colors.yellow[600]!,
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EventsPage()),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Upcoming Events',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(height: 10),
                  const EventCard(
                    eventTitle: "Mom's Night Out",
                    eventTime: 'Friday, 5 PM',
                  ),
                  const EventCard(
                    eventTitle: "Breastfeeding Workshop",
                    eventTime: 'Saturday, 10 AM at Local Library',
                  ),
                  const SizedBox(height: 10),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to Events page
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFF7C843),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.0, vertical: 12.0),
                        child: Text(
                          'View All Events',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: const Color(0xFFF7C843),
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.group),
                label: 'Groups',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.event),
                label: 'Events',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_books),
                label: 'Library',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message),
                label: 'Messages',
              ),
            ],
            onTap: (index) {
              // Handle navigation tap
            },
          )
          // Add bottom navigation bar
          ),
    );
  }
}

class HomeCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const HomeCard({
    super.key,
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          ),
        ),
        color: Colors.white,
        elevation: 7,
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 20, color: color),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String eventTitle;
  final String eventTime;

  const EventCard({
    super.key,
    required this.eventTitle,
    required this.eventTime,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          elevation: 7,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  eventTitle,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  eventTime,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
