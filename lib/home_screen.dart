import 'package:flutter/material.dart';
import 'package:flutter_navigation/screen_two.dart';
import 'package:flutter_navigation/screen_three.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Drawer'),
        backgroundColor: const Color(0xff764abc),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Umar Farooq'),
              accountEmail: Text('develop.umar@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/7562313/pexels-photo-7562313.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Page 1'),
              onTap: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.calculate),
              title: const Text('Page 2'),
              onTap: () {
                Navigator.pushNamed(context, ScreenTwo.id);
              },
            ),
            ListTile(
              leading: const Icon(Icons.circle_notifications),
              title: const Text('Page 3'),
              onTap: () {
                Navigator.pushNamed(context, ScreenThree.id);
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, ScreenTwo.id);
            },
            child: const Text('Screen two'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, ScreenThree.id);
            },
            child: const Text('Screen Three'),
          ),
        ],
      ),
    );
  }
}
