import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Receive the arguments sent from the Home Screen
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final String name = args['name'];
    final int rollNumber = args['rollNumber'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Student Name: $name',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 10),
            Text(
              'Roll Number: $rollNumber',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 30),

            // Back button
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // go back to Home Screen
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}