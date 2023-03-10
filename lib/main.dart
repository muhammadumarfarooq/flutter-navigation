import 'package:flutter/material.dart';
import 'package:flutter_navigation/home_screen.dart';
import 'package:flutter_navigation/screen_three.dart';
import 'package:flutter_navigation/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        ScreenTwo.id: (context) => const ScreenTwo(),
        ScreenThree.id: (context) => const ScreenThree()
      },
    );
  }
}
