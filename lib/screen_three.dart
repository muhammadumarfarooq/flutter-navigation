import 'package:flutter/material.dart';
import 'package:flutter_navigation/home_screen.dart';
import 'package:flutter_navigation/screen_two.dart';

class ScreenThree extends StatefulWidget {
  static const String id = 'screen_three';

  const ScreenThree({Key? key}) : super(key: key);

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
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
            child: const Text('Home Screen'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, ScreenTwo.id);
            },
            child: const Text('Screen Three'),
          ),
        ],
      ),
    );
  }
}
