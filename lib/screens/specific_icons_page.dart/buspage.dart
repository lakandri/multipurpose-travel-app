import 'package:flutter/material.dart';
import 'package:ticketing_system/core/constant/constant.dart';

class SearchBusesPage extends StatefulWidget {
  @override
  _SearchBusesPageState createState() => _SearchBusesPageState();
}

class _SearchBusesPageState extends State<SearchBusesPage> {
  String fromLocation = "Kathmandu";
  String toLocation = "Kakadvitta";
  DateTime selectedDate = DateTime.now();
  String selectedShift = "Both";

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Buses"),
        backgroundColor: primaryBgColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // From Field
            const Text("From", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            TextField(
              controller: TextEditingController(text: fromLocation),
              readOnly: true,
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.location_on, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onTap: () {},
            ),
            const SizedBox(height: 16),

            // To Field
            const Text("To", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            TextField(
              controller: TextEditingController(text: toLocation),
              readOnly: true,
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.location_on, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onTap: () {},
            ),
            const SizedBox(height: 16),

            const Text("Departure Date", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            GestureDetector(
              onTap: () => _selectDate(context),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${selectedDate.toLocal()}".split(' ')[0],
                      style: const TextStyle(fontSize: 16),
                    ),
                    const Icon(Icons.calendar_today, color: Colors.grey),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),

            const Text("Selected Shift", style: TextStyle(fontSize: 16)),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text("Both"),
                    value: "Both",
                    groupValue: selectedShift,
                    onChanged: (value) {
                      setState(() {
                        selectedShift = value!;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text("Day"),
                    value: "Day",
                    groupValue: selectedShift,
                    onChanged: (value) {
                      setState(() {
                        selectedShift = value!;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text("Night"),
                    value: "Night",
                    groupValue: selectedShift,
                    onChanged: (value) {
                      setState(() {
                        selectedShift = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryBgColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  // Implement Search Logic
                  print("Searching Buses from $fromLocation to $toLocation");
                },
                child: const Text(
                  "Search Buses",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
