import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GridView Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const GridScreen(),
    );
  }
}

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  // Sample data list of 6 items (users data with name and email )
  final List<Map<String, String>> items = const [
    {'name': 'Ubaid Gul', 'email': 'ali.khan@example.com'},
    {'name': 'Bakhti Khan', 'email': 'sara.ahmed@example.com'},
    {'name': 'Usman Tariq', 'email': 'usman.t@example.com'},
    {'name': 'Ayesha Malik', 'email': 'ayesha.m@example.com'},
    {'name': 'Bilal Raza', 'email': 'bilal.raza@example.com'},
    {'name': 'Zainab Noor', 'email': 'zainab.n@example.com'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GridView Example')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 items per row
            crossAxisSpacing: 12, // Horizontal gap between cards
            mainAxisSpacing: 12, // Vertical gap between cards
            childAspectRatio: 0.95, // Adjusts card height vs width
          ),
          itemBuilder: (context, index) {
            final item = items[index];
            final name = item['name']!;
            final email = item['email']!;

            return Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.blue.shade100,
                      child: Text(
                        name[0], // Displays the first letter of the name
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      email,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
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
