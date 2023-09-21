import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_01/Screens/other%20screens/category_screen.dart';

import '../home_screen.dart';
import 'favourite_producr_sreen.dart';
import 'more_screen.dart';
class bottom_nav_barr extends StatefulWidget {
  bottom_nav_barr({Key? key}) : super(key: key);

  @override
  State<bottom_nav_barr> createState() => _bottom_nav_barrState();
}

class _bottom_nav_barrState extends State<bottom_nav_barr> {

int _pageIndex = 0; // Index of the selected tab

  // List of screens to navigate to
  final List<Widget> _screens = [
    Home_screen(),
    category_screen(),
    favourite_product_sreen(),
    more_screen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_pageIndex], // Display the selected screen
      bottomNavigationBar: CurvedNavigationBar(
        height: 50,
        color: Color(0xFFF8F7FB),
        animationDuration: Duration(milliseconds: 500),
        index: _pageIndex, // Set the current index
        onTap: (index) {
          // Handle navigation when a tab is tapped
          setState(() {
            _pageIndex = index; // Update the selected tab index
          });
        },
        items: [
          Icon(Icons.home, color: Color(0xFFFE0B420)),
          Icon(Icons.category, color: Color(0xFFFE0B420)),
          Icon(Icons.favorite_outline, color: Color(0xFFFE0B420)),
          Icon(Icons.more_vert, color: Color(0xFFFE0B420)),
        ],
      ),
    );
  }
}
