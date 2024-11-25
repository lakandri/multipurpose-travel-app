import 'package:flutter/material.dart';
import 'package:ticketing_system/core/constant/constant.dart';
import 'package:ticketing_system/screens/specific_icons_page.dart/buspage.dart';
import 'package:ticketing_system/screens/specific_icons_page.dart/cab_page.dart';

class CategoryList extends StatelessWidget {
  final List<Map<String, dynamic>> services = [
    {
      'image': 'assets/icons/bus.png',
      'label': 'Bus',
      'page': SearchBusesPage(),
    },
    {
      'image': 'assets/icons/car.png',
      'label': 'Cab',
      'page': const CabPage(),
    },
    {
      'image': 'assets/icons/bik.png',
      'label': ' Ride sharing',
      'page': const CabPage()
    },
    {
      'image': 'assets/icons/delivery.png',
      'label': 'Food Delivery',
      'page': const CabPage(),
    },
    {
      'image': 'assets/icons/event.png',
      'label': 'Event ',
      'page': const CabPage()
    },
    {
      'image': 'assets/icons/hotell.png',
      'label': 'Holiday Packages',
      'page': SearchBusesPage()
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: primaryBgColor,
        ),
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: services.map((service) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => service['page']));
                    print("${service['label']} tapped");
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          // color: primaryBgColor,
                          boxShadow: [
                            BoxShadow(
                              color: primaryBgColor,
                              blurRadius: 4,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          service['image'],
                          height: 32,
                          width: 32,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        service['label'],
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
