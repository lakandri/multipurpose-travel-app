import 'package:flutter/material.dart';
import 'package:ticketing_system/screens/inside_screen/destination_activity.dart';

class DestinationList extends StatelessWidget {
  final List<Map<String, String>> destinations = [
    {'name': 'Pokhara', 'image': 'assets/destination/pokhara.jpg'},
    {'name': 'Kathmandu', 'image': 'assets/destination/ktm.jpg'},
    {'name': 'Ilam', 'image': 'assets/destination/ilam.jpg'},
    {'name': 'Mt Everest', 'image': 'assets/destination/everest.jpg'},
    {'name': 'Lumbini', 'image': 'assets/destination/limbuni.jpg'},
    {'name': 'Nagarkot', 'image': 'assets/destination/pokhara.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: destinations.length,
          itemBuilder: (context, index) {
            final destination = destinations[index];
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DestinationDetailPage(
                                    destinationName: 'Pokhara')));
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          destination['image']!,
                          fit: BoxFit.cover,
                          width: 150,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    destination['name']!,
                    style: TextStyle(fontSize: 14),
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
