import 'package:findyourdoctor/constants.dart';
import 'package:flutter/material.dart';
import 'package:findyourdoctor/Screens/Welcome/welcome_screen.dart';
import 'package:findyourdoctor/constants.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Find your Doctor',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: lightBG,
      ),
      home: const WelcomeScreen(),
    );
  }
}