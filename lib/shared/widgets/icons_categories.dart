// // import 'package:flutter/material.dart';
// // import 'package:ticketing_system/core/constant/constant.dart';
// // import 'package:ticketing_system/screens/specific_screen.dart/EventTicketScreen.dart';
// // import 'package:ticketing_system/screens/specific_screen.dart/VotingScreen.dart';
// // import 'package:ticketing_system/screens/specific_screen.dart/walletscreen.dart';

// // import '../../screens/specific_screen.dart/cab_screen.dart';
// // import '../../screens/specific_screen.dart/hotel.dart';
// // import '../../screens/specific_screen.dart/movies.dart';

// // class RechargeBillPayment extends StatelessWidget {
// //   final List<Map<String, dynamic>> services = [
// //     {'icon': Icons.movie_filter, 'label': 'Movies Ticket'},
// //     {'icon': Icons.hotel, 'label': 'Hotel Booking'},
// //     {'icon': Icons.car_rental, 'label': 'Cab Booking'},
// //     {'icon': Icons.event_available, 'label': 'Event Ticket'},
// //     {
// //       'icon': Icons.volunteer_activism_sharp,
// //       'label': 'Event Contestant Voting'
// //     },
// //     {'icon': Icons.account_balance, 'label': 'Wallet'},
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.symmetric(vertical: 16.0),
// //       child: SizedBox(
// //         height: 100,
// //         child: ListView.builder(
// //           scrollDirection: Axis.horizontal,
// //           itemCount: services.length,
// //           itemBuilder: (context, index) {
// //             return Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 8.0),
// //               child: InkWell(
// //                 onTap: () {
// //                   print("Tapped on: ${services[index]['label']}");
// //                   switch (services[index]['label']) {
// //                     case 'Movies Ticket':
// //                       Navigator.push(
// //                           context,
// //                           MaterialPageRoute(
// //                               builder: (context) => const MoviesScreen()));
// //                       break;
// //                     case 'Hotel Booking':
// //                       Navigator.push(
// //                           context,
// //                           MaterialPageRoute(
// //                               builder: (context) => const HotelScreen()));
// //                       break;
// //                     case 'Cab Booking':
// //                       Navigator.push(
// //                           context,
// //                           MaterialPageRoute(
// //                               builder: (context) => const CabScreen()));
// //                       break;
// //                     case 'Event Ticket':
// //                       Navigator.push(
// //                           context,
// //                           MaterialPageRoute(
// //                               builder: (context) => Eventticketscreen()));
// //                       break;
// //                     case 'Event Contestant Voting':
// //                       Navigator.push(
// //                           context,
// //                           MaterialPageRoute(
// //                               builder: (context) => const Votingscreen()));
// //                       break;
// //                     case 'Wallet':
// //                       Navigator.push(
// //                           context,
// //                           MaterialPageRoute(
// //                               builder: (context) => const Walletscreen()));
// //                       break;
// //                     default:
// //                       ScaffoldMessenger.of(context).showSnackBar(
// //                         const SnackBar(
// //                           content: Text('Service not available yet'),
// //                         ),
// //                       );
// //                   }
// //                 },
// //                 child: Column(
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   children: [
// //                     Material(
// //                       elevation: 5,
// //                       shape: CircleBorder(),
// //                       shadowColor: Colors.amber,
// //                       child: Container(
// //                         width: 25,
// //                         height: 25,
// //                         decoration: BoxDecoration(
// //                           shape: BoxShape.circle,
// //                           // color: Colors.grey.shade200,
// //                           color: Colors.white,
// //                           border: Border.all(color: primaryBgColor, width: 1.5),
// //                         ),
// //                         padding: const EdgeInsets.all(12.0),
// //                         child: Icon(
// //                           services[index]['icon'],
// //                           size: 24,
// //                           color: primaryBgColor,
// //                         ),
// //                       ),
// //                     ),
// //                     const SizedBox(height: 5),
// //                     Text(
// //                       services[index]['label'],
// //                       style: const TextStyle(
// //                         fontSize: 12,
// //                         color: Colors.black,
// //                       ),
// //                       textAlign: TextAlign.center,
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             );
// //           },
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// class IconsCategories extends StatelessWidget {
//   final List<Map<String, dynamic>> services = [
//     {
//       'image': 'assets/icons/car.png',
//       'label': 'Flights'
//     }, // Replace with your image paths
//     {'image': 'assets/icons/bus.png', 'label': 'Hotels'},
//     {'image': 'assets/icons/homestays.png', 'label': 'Homestays & Villas'},
//     {'image': 'assets/icons/bike.png', 'label': 'Holiday Packages'},
//     {'image': 'assets/icons/bus.png', 'label': 'Hotels'},
//     {'image': 'assets/icons/homestays.png', 'label': 'Homestays & Villas'},
//     {'image': 'assets/icons/bike.png', 'label': 'Holiday Packages'},
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       padding: const EdgeInsets.symmetric(vertical: 16.0),
//       child: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Row(
//           children: services.map((service) {
//             return Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: GestureDetector(
//                 onTap: () {
//                   // Handle tap
//                   print("${service['label']} tapped");
//                 },
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Container(
//                       decoration: BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Colors.grey.shade200,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.shade400,
//                             blurRadius: 4,
//                             offset: const Offset(2, 2),
//                           ),
//                         ],
//                       ),
//                       padding: const EdgeInsets.all(16.0),
//                       child: Image.asset(
//                         service['image'],
//                         height: 32,
//                         width: 32,
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     Text(
//                       service['label'],
//                       style: const TextStyle(
//                         fontSize: 12,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.black,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
