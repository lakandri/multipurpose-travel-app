import 'package:flutter/material.dart';
import 'package:ticketing_system/constant/constant.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabSelected;

  BottomNavBar({required this.currentIndex, required this.onTabSelected});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTabSelected,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(
              size: 30,
              Icons.home,
              color: primaryBgColor,
            ),
            label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(size: 30, Icons.local_offer, color: primaryBgColor),
            label: 'Offer'),
        BottomNavigationBarItem(
            icon: Icon(
                size: 30, Icons.travel_explore_rounded, color: primaryBgColor),
            label: 'My Trips'),
        BottomNavigationBarItem(
            icon: Icon(size: 30, Icons.support, color: primaryBgColor),
            label: 'Support'),
        BottomNavigationBarItem(
            icon: Icon(size: 30, Icons.account_circle, color: primaryBgColor),
            label: 'Account'),
      ],
    );
  }
}
