import 'package:flutter/material.dart';

class CostumListView extends StatelessWidget {
  final String imgUrl;
  final String name;

  CostumListView({
    super.key,
    required this.imgUrl,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 80,
        width: 80,
        color: const Color.fromARGB(255, 218, 61, 245),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imgUrl,
              height: 60,
              width: 60,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
