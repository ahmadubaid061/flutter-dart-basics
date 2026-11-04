import 'package:flutter/material.dart';

class RowColumnScreen extends StatelessWidget {
  const RowColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Row and Column')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text('Row: children arranged horizontally',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    // mainAxisAlignment: horizontal distribution for a Row
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: vertical alignment for a Row
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(Icons.home, size: 30),
                      Icon(Icons.favorite, size: 30, color: Colors.red),
                      Icon(Icons.settings, size: 30),
                    ],
                  ),
                ),
                const SizedBox(height: 28),
                const Text('Column: children arranged vertically',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                Container(
                  // Relative width, with a maximum so it doesn't get too wide on tablets.
                  width: constraints.maxWidth * 0.90,
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.orange.shade50,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    // mainAxisAlignment: vertical distribution for a Column
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // crossAxisAlignment: horizontal alignment for a Column
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(Icons.cloud, size: 30),
                      SizedBox(height: 8),
                      Text('Weather'),
                      SizedBox(height: 8),
                      Text('Sunny • 25°C'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Tip: Row main axis = horizontal. Column main axis = vertical. '
                  'Use Expanded or Flexible when children need to share available space.',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
