import 'package:flutter/material.dart';
import 'package:ticketing_system/core/constant/constant.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: const Color.fromARGB(255, 8, 95, 246),
      unselectedItemColor: Colors.black,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: primaryBgColor,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.local_offer,
            color: primaryBgColor,
          ),
          label: 'Offers',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.trip_origin,
            color: primaryBgColor,
          ),
          label: 'My Trips',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.support,
            color: primaryBgColor,
          ),
          label: 'Support',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle,
            color: primaryBgColor,
          ),
          label: 'Account',
        ),
      ],
    );
  }
}
