import 'package:flutter/material.dart';
import 'package:ticketing_system/constant/constant.dart';
import 'package:ticketing_system/models/destination_service_activity.dart';

class DestinationDetailPage extends StatelessWidget {
  final List<Activity> activities = [
    Activity(
      name: 'Hot Air Balloon Tour',
      location: 'Kaski',
      rating: 5.0,
      reviews: 1,
      openingHours: '05:00 AM - 07:00 PM',
      price: 11000,
      imagePath: 'assets/destination/pokhara.jpg',
    ),
    Activity(
      name: 'Paragliding',
      location: 'Kaski',
      rating: null,
      reviews: null,
      openingHours: '09:00 AM - 01:00 PM',
      price: 8500,
      imagePath: 'assets/destination/pokhara.jpg',
    ),
  ];

  final String destinationName;

  DestinationDetailPage({required this.destinationName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Result For: $destinationName'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: activities.length,
        itemBuilder: (context, index) {
          final activity = activities[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      activity.imagePath,
                      fit: BoxFit.cover,
                      height: 180,
                      width: double.infinity,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    activity.name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(activity.location),
                      if (activity.rating != null)
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 16),
                            Text(
                                '${activity.rating} (${activity.reviews} review${activity.reviews == 1 ? "" : "s"})'),
                          ],
                        )
                      else
                        Text('Not rated yet',
                            style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text('Open Hours: ${activity.openingHours}'),
                  Text(
                    'Starts at NPR ${activity.price}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryBgColor,
                      ),
                      onPressed: () {},
                      child: Text('Book Now'),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
