import 'package:flutter/material.dart';
import 'package:ticketing_system/core/constant/constant.dart';

class Votingscreen extends StatefulWidget {
  const Votingscreen({Key? key}) : super(key: key);

  @override
  State<Votingscreen> createState() => _CabScreenState();
}

class _CabScreenState extends State<Votingscreen> {
  int selectedIndex = 0; // Variable to track selected option

  final List<Map<String, String>> vehicleOptions = [
    {'image': 'assets/taxi.png', 'name': 'Comfort'},
    {'image': 'assets/taxt2.png', 'name': 'Delivery'},
    {'image': 'assets/city.png', 'name': 'City'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF1A1A1A),
        elevation: 0,
        toolbarHeight: 40,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: vehicleOptions.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: _buildOption(
                      vehicleOptions[index]['image']!,
                      vehicleOptions[index]['name']!,
                      index == selectedIndex,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Icon(Icons.circle, color: primaryBgColor, size: 10),
                SizedBox(width: 8),
                Text(
                  'Searching for you on the map...',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 20),
            _buildTextField(context, Icons.search, 'To'),
            const SizedBox(height: 10),
            _buildTextField(context, Icons.currency_rupee, 'Offer your fare',
                suffixIcon: Icons.edit),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.local_taxi, color: Colors.black),
              label: const Text('Find a driver',
                  style: TextStyle(color: Colors.black)),
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryBgColor,
                minimumSize: const Size(double.infinity, 50),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOption(String imagePath, String label, bool isSelected) {
    return Container(
      width: 80,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: isSelected ? primaryBgColor : Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: isSelected
            ? Border.all(
                color: const Color.fromARGB(255, 250, 181, 181), width: 2)
            : null, // Optional border
      ),
      child: Column(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(color: Colors.white, fontSize: 12),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(BuildContext context, IconData icon, String hintText,
      {IconData? suffixIcon}) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF2D2D2D),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.grey),
          suffixIcon:
              suffixIcon != null ? Icon(suffixIcon, color: Colors.grey) : null,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
