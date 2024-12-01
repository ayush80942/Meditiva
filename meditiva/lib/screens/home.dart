import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meditiva/navigation/navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(4),
              child: Row(
                children: [
                  IconButton(icon: Icon(Icons.menu_open_outlined, size: 28), onPressed: () {
                    scaffoldKey.currentState?.openDrawer();
                  },),
                  const SizedBox(width: 12),
                  CircleAvatar(),
                  const SizedBox(width: 12),
                  Text(
                    'Pranav',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
