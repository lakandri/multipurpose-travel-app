import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          _buildOfferCard(
            "Dare to Jump",
            "Up to NPR 550 off at The Cliff",
            "assets/offers/bus.jpeg",
          ),
          _buildOfferCard(
            "Discount That Doesn't Stop",
            "Get NPR 300 on first flight & NPR 200 on subsequent bookings",
            "assets/offers/hotel.jpg",
          ),
          _buildOfferCard(
            "Fly Like a Pro",
            "Enjoy paragliding adventures with exclusive discounts",
            "assets/offers/plane.jpg",
          ),
        ],
      ),
    );
  }

  Widget _buildOfferCard(String title, String subtitle, String imagePath) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              imagePath,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
