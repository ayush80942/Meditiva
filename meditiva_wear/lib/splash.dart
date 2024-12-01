import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditiva_wear/start.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      // After 3 seconds, navigate to HomeScreen
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => StartScreen()));
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6D4AE4),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 50.0,
              width: 50.0,
            ),
            const SizedBox(height: 6.0),
            Text(
              'Meditiva',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}