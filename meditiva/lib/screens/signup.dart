import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditiva/screens/login.dart';
import 'package:meditiva/screens/onborading/screen1.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                    color: Color(0xFF6D4AE4),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              'Start A New Journey',
              style: GoogleFonts.josefinSans(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              'Be A Part Of Us !',
              style: GoogleFonts.josefinSans(
                fontSize: 16.0,
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 40.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Using buildTextField for all fields
                buildTextField(
                  labelText: 'Enter Your Email ID',
                  inputType: TextInputType.emailAddress,
                ),
                buildTextField(
                  labelText: 'Enter Username',
                ),
                buildTextField(
                  labelText: 'Enter New Password',
                  isPassword: true,
                ),
                buildTextField(
                  labelText: 'Enter OTP Received On Your Mail ID',
                  inputType: TextInputType.number,
                ),
                Text(
                  '* Indicates the respective fields are mandatory to fill',
                  style: GoogleFonts.josefinSans(
                    fontSize: 12,
                    color: Colors.red,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Spacer(),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF6D4AE4),
                  padding: EdgeInsets.symmetric(vertical: 12.0),
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
                      'Sign Up Now',
                      style: GoogleFonts.josefinSans(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    Icon(
                      Icons.login,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account ? ',
                    style: GoogleFonts.josefinSans(
                      color: Colors.black54,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LogInScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'Login Now',
                      style: GoogleFonts.josefinSans(
                        color: Color(0xFF6D4AE4),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 42.0),
          ],
        ),
      ),
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
          style: GoogleFonts.josefinSans(
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
              borderSide: BorderSide(color: Colors.purple),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.purple),
            ),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
