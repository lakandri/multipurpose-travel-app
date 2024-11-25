import 'package:flutter/material.dart';
import 'package:ticketing_system/core/constant/constant.dart';

class MyTripsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Trips',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: primaryBgColor,
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back, color: Colors.white),
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        // ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                _buildListTile(Icons.flight, "Flight History"),
                _buildListTile(Icons.directions_boat, "Activity History"),
                _buildListTile(Icons.directions_bus, "Bus History"),
                _buildListTile(Icons.payment, "Payment History"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // Image.asset(
                //   'assets/images/not_signed_in.png',
                //   height: 150,
                // ),
                const SizedBox(height: 16),
                const Text(
                  "Not Signed up yet! - let's change that",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryBgColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    // Navigate to sign-in screen
                  },
                  child: const Text(
                    "Sign-in Now",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(IconData icon, String title) {
    return ListTile(
      leading: Icon(
        icon,
        size: 30,
        color: primaryBgColor,
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, color: Colors.black),
      ),
      trailing: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
      onTap: () {},
    );
  }
}
