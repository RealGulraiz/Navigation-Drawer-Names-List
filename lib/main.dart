import 'package:flutter/material.dart';
import 'package:flutter_bootcamp_ch5/home_screen.dart';
import 'package:flutter_bootcamp_ch5/screen_one.dart';

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
        HomeScreen.id : (context) => HomeScreen(),
        ScreenOne.id : (context) => ScreenOne(),
      },
      // home: HomeScreen(),
    );
  }
}


