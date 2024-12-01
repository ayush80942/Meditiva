import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: Border.all(width: 0),
      child: Container(
        decoration: BoxDecoration(
        color: const Color(0xFF6D4AE4),

        ),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Pranav'),
              accountEmail: Text('pranavsharm42@gmail.com'),
              currentAccountPicture: CircleAvatar(
              ),
              decoration: BoxDecoration(
                color: const Color(0xFF6D4AE4),
              ),
            ),
            _buildMenuItem(Icons.settings, 'Account Settings'),
            _buildMenuItem(Icons.language, 'Language Settings'),
            _buildMenuItem(Icons.payment, 'Subscription and Billing'),
            _buildMenuItem(Icons.notifications, 'Notification'),
            _buildMenuItem(Icons.fitness_center, 'Meditva Smart Mat Settings'),
            _buildMenuItem(Icons.bluetooth, 'Connectivity'),
            _buildMenuItem(Icons.security, 'Privacy and Security'),
            _buildMenuItem(Icons.help, 'Help and Support'),
            _buildMenuItem(Icons.info, 'About the App'),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton.icon(
                icon: Icon(Icons.logout, color: Colors.deepPurple),
                label: Text('Logout', style: TextStyle(color: Colors.deepPurple)),
                style: ElevatedButton.styleFrom(
                  iconColor: Colors.white,
                  foregroundColor: const Color(0xFF6D4AE4),
                  minimumSize: Size(double.infinity, 50),
                ),
                onPressed: () {
                  // Implement logout functionality
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title, style: TextStyle(color: Colors.white)),
      onTap: () {
        // Implement navigation or action for each menu item
      },
    );
  }
}
