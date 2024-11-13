import 'package:flutter/material.dart';
import 'package:ticketing_system/constant/constant.dart';

import '../screens/specific_screen.dart/cab_screen.dart';
import '../screens/specific_screen.dart/hotel.dart';
import '../screens/specific_screen.dart/movies.dart';

class RechargeBillPayment extends StatelessWidget {
  final List<Map<String, dynamic>> services = [
    {'icon': Icons.movie_filter, 'label': 'Movies Ticket'},
    {'icon': Icons.hotel, 'label': 'Hotel Booking'},
    {'icon': Icons.car_rental, 'label': 'Cab Booking'},
    {'icon': Icons.event_available, 'label': 'Event Ticket'},
    {
      'icon': Icons.volunteer_activism_sharp,
      'label': 'Event Contestant voting'
    },
    {'icon': Icons.account_balance, 'label': 'Wallet'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: services.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: InkWell(
                onTap: () {
                  switch (services[index]['label']) {
                    case 'Movies Ticket':
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MoviesScreen()));
                      break;
                    case 'Hotel Booking':
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HotelScreen()));
                      break;
                    case 'Cab Booking':
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CabScreen()));
                      break;
                    default:
                      print('Unknown service');
                  }
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade200,
                        border: Border.all(color: primaryBgColor, width: 1.5),
                      ),
                      padding: const EdgeInsets.all(12.0),
                      child: Icon(
                        services[index]['icon'],
                        size: 24,
                        color: primaryBgColor,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      services[index]['label'],
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
