import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditiva/screens/onborading/screen2.dart';
import 'package:meditiva/screens/signup.dart';

class OnBoardingScreen1 extends StatefulWidget {
  const OnBoardingScreen1({super.key});

  @override
  State<OnBoardingScreen1> createState() => _OnBoardingScreen1State();
}

class _OnBoardingScreen1State extends State<OnBoardingScreen1> {
  String? _gender;

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
              'Enter Your Details',
              style: GoogleFonts.josefinSans(
                fontSize: 28.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              'Tell us about yourself so that we can provide you with the best that we have!',
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
                buildTextField(
                  labelText: 'Enter Your Age',
                  inputType: TextInputType.emailAddress,
                ),
                buildTextField(
                  labelText: 'Enter Your Weight',
                ),
                Text(
                  'Select Your Gender *',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                genderButton("Male"),
                genderButton("Female"),
                genderButton("Others"),
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
                            builder: (context) => SignUpScreen(),
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
                              builder: (context) => OnBoardingScreen2(),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Next',
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
                height: 70), // Space at the bottom for a cleaner layout
          ],
        ),
      ),
    );
  }

  Widget genderButton(String gender) {
    return Column(
      children: [
        const SizedBox(height: 15),
        Container(
          height: 54,
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () {
              setState(() {
                _gender = gender;
              });
            },
            child: Text(
              gender,
              style: GoogleFonts.poppins(
                fontSize: 16,
                color: _gender == gender ? Colors.white : Colors.black87,
              ),
            ),
            style: OutlinedButton.styleFrom(
              backgroundColor: _gender == gender ? Color(0xFF6D4AE4) : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              side: BorderSide(
                color: _gender == gender ? Color(0xFF6D4AE4) : Colors.grey.shade500,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildTextField({
    required String labelText,
    bool isPassword = false,
    TextInputType inputType = TextInputType.text,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '$labelText *',
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          obscureText: isPassword,
          keyboardType: inputType,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Color(0xFF6D4AE4)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFF6D4AE4)),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
