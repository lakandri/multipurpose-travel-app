import 'package:flutter/material.dart';
import 'package:ticketing_system/core/constant/constant.dart';
import 'package:ticketing_system/models/customer_support_viewmodel.dart';

class CustomerSupportScreen extends StatelessWidget {
  final CustomerSupportViewModel viewModel = CustomerSupportViewModel();

  @override
  Widget build(BuildContext context) {
    final supportOptions = viewModel.getSupportOptions();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Support'),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 73, 121, 242),
                Color.fromARGB(255, 112, 170, 243)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: supportOptions.length,
                itemBuilder: (context, index) {
                  final option = supportOptions[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: InkWell(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Tapped on: ${option.label}'),
                          ),
                        );
                      },
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor:
                                const Color.fromARGB(255, 205, 233, 255),
                            child: Icon(
                              option.icon,
                              color: primaryBgColor,
                              size: 24,
                            ),
                          ),
                          title: Text(
                            option.label,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: const Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                            size: 16,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.red.shade50,
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.headset_mic,
                      size: 50,
                      color: Colors.redAccent,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Feel free to contact us through any of the options given above.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
