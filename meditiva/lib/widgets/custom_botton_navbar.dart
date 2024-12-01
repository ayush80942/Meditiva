import 'package:flutter/material.dart';
import 'package:meditiva/navigation/provider.dart';
import 'package:provider/provider.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(36)),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 5),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavBarItem(icon: Icons.home, label: 'Home', index: 0),
          NavBarItem(icon: Icons.weekend, label: 'Smart Mat', index: 1),
          NavBarItem(icon: Icons.leaderboard, label: 'Leaderboard', index: 2),
          NavBarItem(icon: Icons.assessment, label: 'Leaderboard', index: 3),
          NavBarItem(icon: Icons.person, label: 'Profile', index: 4),
        ],
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final int index;

  NavBarItem({required this.icon, required this.label, required this.index});

  @override
  Widget build(BuildContext context) {
    final navigationProvider = Provider.of<NavigationProvider>(context);
    final isSelected = navigationProvider.currentIndex == index;

    return GestureDetector(
      onTap: () => navigationProvider.setIndex(index),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? const Color.fromARGB(255, 41, 81, 176) : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: isSelected ? Colors.white : Colors.black54),
            if (isSelected) SizedBox(width: 10),
            if (isSelected)
              Text(
                label,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
          ],
        ),
      ),
    );
  }
}