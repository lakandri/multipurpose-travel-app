import 'package:flutter/material.dart';
import 'package:ticketing_system/constant/constant.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primaryBgColor,
      title: TextField(
        decoration: InputDecoration(
          hintText: "Search Destination",
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(Icons.search, color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {},
          color: Colors.white,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(60);
}
