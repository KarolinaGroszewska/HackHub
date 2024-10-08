import 'package:flutter/material.dart';
import 'package:hackhub/Screens/Welcome/welcome_screen.dart';
import 'package:hackhub/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HackHub',
      theme: ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen()
    );
  }
}
