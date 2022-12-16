import 'package:flutter/material.dart';
import 'package:flutter_navigation/screen_two.dart';

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
        children: [Center(
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(context, ScreenTwo.id);
            },
            child: const Text('Screen two'),
          ),
        ),
          Text('asdfasdfsadf')
        ],
      ),
    );
  }
}
