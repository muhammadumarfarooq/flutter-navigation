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
