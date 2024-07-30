import 'package:crockery/screens/bulk_btn_screen.dart';
import 'package:crockery/screens/home_screen.dart';
import 'package:crockery/screens/list_item_screen.dart';
import 'package:crockery/screens/myprofile_screen.dart';
import 'package:crockery/widgets/mycolors.dart';
import 'package:flutter/material.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int index = 0;
  final screens = [
    const HomeScreen(),
    const BulkButtonScreen(),
    const ListItemScreen(),
    const MYProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeScreenBackgroundColor,
        body: screens[index],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarThemeData(
              indicatorColor: homeScreenBackgroundColor,
              labelTextStyle: MaterialStateProperty.all(
                const TextStyle(color: iconColor, fontSize: 14.0, fontWeight: FontWeight.w400),
              )),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20.0), // Adjust the radius as needed
              topRight: Radius.circular(20.0), // Adjust the radius as needed
            ),
            child: NavigationBar(
              height: 80.0,
              backgroundColor: Colors.white,
              selectedIndex: index,
              onDestinationSelected: (index) => setState(() => this.index = index),
              labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
              destinations: const [
                NavigationDestination(
                    icon: Icon(Icons.home_outlined, color: iconColor,),
                    selectedIcon: Icon(Icons.home, color: iconColor,),
                    label: 'Home',),
                NavigationDestination(
                    icon: Icon(Icons.shopping_bag_outlined, color: iconColor),
                    selectedIcon: Icon(Icons.shopping_bag, color: iconColor),
                    label: 'Bulk Order'),
                NavigationDestination(
                    icon: Icon(Icons.add_box_outlined, color: iconColor),
                    selectedIcon: Icon(Icons.add_box_rounded, color: iconColor),
                    label: 'View Invoice'),
                NavigationDestination(
                    icon: Icon(Icons.person_outline_rounded, color: iconColor),
                    selectedIcon: Icon(Icons.person, color: iconColor),
                    label: 'Profile'),
              ],
            ),
          ),
        ));
  }
}
