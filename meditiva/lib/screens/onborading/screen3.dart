import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditiva/navigation/navigation.dart';

class OnBoardingScreen3 extends StatelessWidget {
  const OnBoardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF6D4AE4),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 160),
            Row(
              children: [
                Image.asset(
                  'assets/images/logo2.png',
                  height: 38.0,
                  width: 38,
                  color: Colors.white,
                ),
                const SizedBox(width: 8.0),
                Text(
                  'Meditiva',
                  style: GoogleFonts.josefinSans(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 26.0),
            Text(
              'Congratulation on setting up your profile !',
              style: GoogleFonts.poppins(
                fontSize: 18.0,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 48),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                featureItem("Personalized yoga guidance"),
                featureItem(
                    "Smart Yoga Mat for posture correction and various features"),
                featureItem("Videos for different yoga poses"),
                featureItem(
                    "Dedicated set of yoga's for different mental and physical issue"),
                featureItem('Smart watch integration'),
                featureItem('AI to generate a custom list for yoga poses'),
              ],
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Navigation(),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Proceed to Home Page',
                      style: GoogleFonts.poppins(
                        fontSize: 18.0,
                        color: Color(0xFF6D4AE4),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 70),
          ],
        ),
      ),
    );
  }

  Widget featureItem(String feature) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              Icons.check_circle,
              color: Colors.white,
              size: 16,
            ),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                feature,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
