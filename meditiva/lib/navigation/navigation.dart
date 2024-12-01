import 'package:flutter/material.dart';
import 'package:meditiva/navigation/provider.dart';
import 'package:meditiva/screens/ble.dart';
import 'package:meditiva/screens/home.dart';
import 'package:meditiva/widgets/custom_botton_navbar.dart';
import 'package:meditiva/widgets/drawer.dart';
import 'package:provider/provider.dart';


final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      key: scaffoldKey,
      body: Consumer<NavigationProvider>(
        builder: (context, navigationProvider, child) {
          switch (navigationProvider.currentIndex) {
            case 0:
              return HomeScreen();
            case 1:
              return BlePage();
            case 2:
              return Center(child: Text('Leaderboard'));
            case 3:
              return Center(child: Text('Leaderboard (Alt)'));
            case 4:
              return Center(child: Text('Profile'));
            default:
              return Center(child: Text('Unknown Page'));
          }
        },
      ),
      bottomNavigationBar: CustomBottomNavBar(),
    );
  }
}