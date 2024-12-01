import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditiva/screens/onborading/screen1.dart';
import 'package:meditiva/screens/onborading/screen3.dart';

class OnBoardingScreen2 extends StatefulWidget {
  const OnBoardingScreen2({super.key});

  @override
  State<OnBoardingScreen2> createState() => _OnBoardingScreen2State();
}

class _OnBoardingScreen2State extends State<OnBoardingScreen2> {
  String? _purpose;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 112),
            Row(
              children: [
                Image.asset(
                  'assets/images/logo2.png', // Replace with your logo path
                  height: 38.0,
                  width: 38,
                ),
                const SizedBox(width: 8.0),
                Text(
                  'Meditiva',
                  style: GoogleFonts.josefinSans(
                    fontSize: 28,
                    color: const Color(0xFF6D4AE4),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Text(
              'Tell Us The Purpose',
              style: GoogleFonts.josefinSans(
                fontSize: 28.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              'Tell us that how you want to use this app for your health betterment !',
              style: GoogleFonts.josefinSans(
                fontSize: 16.0,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 24),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                purposeButton("Physical Fitness"),
                purposeButton("Stress Relief"),
                purposeButton("Mental Clarity"),
                purposeButton("Pain Management"),
                purposeButton("Improved Sleep"),
                purposeButton("Spiritual Growth"),
                purposeButton("Social Interaction"),
              ],
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 16),
                        side: BorderSide(color: Color(0xFF6D4AE4)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OnBoardingScreen1(),
                          ),
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Prev',
                            style: GoogleFonts.poppins(
                              fontSize: 18.0,
                              color: Color(0xFF6D4AE4),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 24),
                  Expanded(
                    child: Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF6D4AE4),
                          padding: EdgeInsets.symmetric(
                              vertical: 12.0, horizontal: 16),
                          side: BorderSide(color: Color(0xFF6D4AE4)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OnBoardingScreen3(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Submit',
                              style: GoogleFonts.poppins(
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
                height: 70),
          ],
        ),
      ),
    );
  }

  Widget purposeButton(String purpose) {
    return Column(
      children: [
        const SizedBox(height: 15),
        Container(
          height: 54,
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () {
              setState(() {
                _purpose = purpose;
              });
            },
            child: Text(
              purpose,
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: _purpose == purpose ? Colors.white : Colors.black87,
              ),
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: _purpose == purpose ? Color(0xFF6D4AE4) : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              side: BorderSide(
                color: _purpose == purpose ? Color(0xFF6D4AE4) : Colors.grey.shade500,
              ),
            ),
          ),
        ),
      ],
    );
  }
}