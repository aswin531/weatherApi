import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/providers/bottomnavbar.dart';
import 'package:weatherapp/screens/home/home_screen.dart';
import 'package:weatherapp/screens/search/search.dart';
import 'package:weatherapp/screens/settings/settings.dart';
import 'package:weatherapp/utils/colors.dart';

class BottomNavBarScreen extends StatelessWidget {
  BottomNavBarScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final bottomNavBarProvider = Provider.of<BottomNavBarProvider>(context);
    final pageController =
        PageController(initialPage: bottomNavBarProvider.selectedIndex);

    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          bottomNavBarProvider.setSelectedIndex(index);
        },
        children: const [HomeScreen(), CustomSearchBar(), SettingsScreen()],
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GNav(
              activeColor: bgFog,
              backgroundColor: Colors.transparent,
              tabBackgroundColor: bgCloudy,
              color: primary,
              gap: 08,
              onTabChange: (index) {
                bottomNavBarProvider.setSelectedIndex(index);
                pageController.jumpToPage(index);
              },
              padding: const EdgeInsets.all(16),
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.search,
                  semanticLabel: "Search Page",
                  text: 'Search',
                ),
                GButton(
                  icon: Icons.settings,
                  text: 'Settings',
                )
              ]),
        ),
      ),
    );
  }
}
