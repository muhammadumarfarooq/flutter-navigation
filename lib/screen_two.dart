import 'package:flutter/material.dart';
import 'package:flutter_navigation/home_screen.dart';
import 'package:flutter_navigation/screen_three.dart';

class ScreenTwo extends StatelessWidget {
  static const String id = 'screen_two';

  const ScreenTwo({Key? key}) : super(key: key);

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
              Navigator.pushNamed(context, HomeScreen.id);
            },
            child: const Text('Screen One'),
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
