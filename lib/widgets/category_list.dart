import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../models/service_model.dart';

class CategoryList extends StatelessWidget {
  final List<Service> services = [
    Service(icon: Icons.tour, label: "Activities"),
    Service(icon: Icons.flight, label: "Flights"),
    Service(icon: Icons.directions_bus, label: "Bus Ticket"),
    Service(icon: Icons.hotel, label: "Hotels"),
    Service(icon: Icons.restaurant, label: "Restaurants"),
    Service(icon: Icons.train, label: "Train Ticket"),
    Service(icon: Icons.local_taxi, label: "Taxi"),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: services.map((service) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: iconColor, width: 2),
                        ),
                        padding: const EdgeInsets.all(12.0),
                        child: Icon(service.icon, color: iconColor, size: 24),
                      ),
                      const SizedBox(height: 5),
                      Text(service.label, style: const TextStyle(fontSize: 12)),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(color: Colors.grey.shade300, width: 1.5),
              ),
              padding:
                  const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
            ),
            onPressed: () {
              // Open the bottom sheet with all categories
              showModalBottomSheet(
                context: context,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                isScrollControlled: true,
                builder: (context) {
                  return DraggableScrollableSheet(
                    expand: false,
                    initialChildSize: 0.5,
                    minChildSize: 0.3,
                    maxChildSize: 0.8,
                    builder: (context, scrollController) {
                      return ListView.builder(
                        controller: scrollController,
                        padding: const EdgeInsets.all(16),
                        itemCount: services.length,
                        itemBuilder: (context, index) {
                          final service = services[index];
                          return ListTile(
                            leading: Icon(service.icon, color: iconColor),
                            title: Text(service.label),
                          );
                        },
                      );
                    },
                  );
                },
              );
            },
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.apps, color: Colors.grey),
                SizedBox(width: 8),
                Text(
                  "All Categories",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
