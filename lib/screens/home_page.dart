import 'package:flutter/material.dart';
import 'package:ticketing_system/screens/inside_screen/CustomerSupportScreen.dart';
import 'package:ticketing_system/screens/inside_screen/MyTripsScreen.dart';
import 'package:ticketing_system/screens/inside_screen/account_screen.dart';
import 'package:ticketing_system/screens/inside_screen/offers.dart';
import 'package:ticketing_system/shared/buttonnavbar.dart';
import 'package:ticketing_system/shared/widgets/app_bar.dart';

import '../shared/widgets/category_list.dart';
import '../shared/widgets/destination_list.dart';
import '../shared/widgets/offers_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getBodyContent() {
    switch (_selectedIndex) {
      case 0:
        return _buildHomeContent();
      case 1:
        return const OffersScreen();
      case 2:
        return MyTripsScreen();
      case 3:
        return CustomerSupportScreen();
      case 4:
        return AccountScreen();
      default:
        return _buildHomeContent();
    }
  }

  Widget _buildHomeContent() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoryList(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text("Top destinations"),
          ),
          DestinationList(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              "Offers",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          OffersList(),
        ],
      ),
    );
  }

  Widget _buildOffersContent() {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.local_offer, size: 100, color: Colors.orange),
          SizedBox(height: 20),
          Text(
            "Exclusive Offers!",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: _getBodyContent(),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _selectedIndex,
        onTap: _onNavItemTapped,
      ),
    );
  }
}
