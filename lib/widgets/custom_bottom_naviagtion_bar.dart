import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(showSelectedLabels: false, selectedFontSize: 12, items: const [
      BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            color: Colors.black,
            size: 30
          ),
          label: ''),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.map_outlined,
            color: Colors.black,
            size: 30
          ),
          label: ''),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_bag_outlined,
            color: Colors.black,
            size: 30
          ),
          label: ''),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.settings,
            color: Colors.black,
            size: 30
          ),
          label: ''),
    ]);
  }
}
