// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:quiz_makanan/screens/intro_page.dart';
import 'package:quiz_makanan/screens/quiz_screen.dart';

import 'my_quiz_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return IntroPage();
      }));
    });

    return const Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Center(
        child: Text(
          "Quiz App",
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
