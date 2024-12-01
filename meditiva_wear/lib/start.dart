import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Assuming the outer background is black
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Circular Gradient Background
            Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:  const Color(0xFF6D4AE4),
              ),
            ),
            // Text at the top
            Positioned(
              top: 16,
              child: Text(
                '9:41 AM',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            // Start Session button in the center
            Container(
              width: 112,
              height: 112,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  'Start\nSession',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF6D4AE4),
                  ),
                ),
              ),
            ),
            // Text at the bottom
            Positioned(
              bottom: 16,
              child: Text(
                'Wed, 12 June',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}