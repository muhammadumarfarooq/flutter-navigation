import 'package:flutter/material.dart';
import 'package:flutter_navigation/home_screen.dart';

class ScreenTwo extends StatelessWidget {
  static const String id = 'home_screen';

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
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, HomeScreen.id);
              },
              child: const Text('Screen One'),
            ),
          ),
          Text('asdfasdfsadf')
        ],
      ),
    );
  }
}
