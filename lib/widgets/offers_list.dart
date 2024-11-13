import 'package:flutter/material.dart';

class OffersList extends StatelessWidget {
  final List<Map<String, String>> offers = [
    {'name': 'Lets Fly together', 'image': 'assets/offers/plane.jpg'},
    {'name': 'Lets travel together', 'image': 'assets/offers/bus.jpeg'},
    {'name': 'Lets sleep', 'image': 'assets/offers/hotel.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: offers.length,
          itemBuilder: (context, index) {
            final destination = offers[index];
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        destination['image']!,
                        fit: BoxFit.cover,
                        width: 250,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    destination['name']!,
                    style: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
