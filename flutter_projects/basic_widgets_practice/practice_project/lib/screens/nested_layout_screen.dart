import 'package:flutter/material.dart';

class NestedLayoutScreen extends StatelessWidget {
  const NestedLayoutScreen({super.key});

  Widget infoTile(IconData icon, String title, String subtitle) {
    return Container(
      // Each tile fills the width offered by its parent.
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.indigo.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.indigo, size: 30),
          const SizedBox(width: 12),
          // Expanded prevents text from pushing beyond the Row's width.
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(subtitle),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nested Rows and Columns')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: SizedBox(
                width: constraints.maxWidth * 0.94,
                child: Column(
                  // Column contains multiple Row-based information tiles.
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    infoTile(Icons.person, 'Ubaid Ahmad', 'Website Developer'),
                    const SizedBox(height: 12),
                    infoTile(Icons.email, 'Email', 'ubaid@example.com'),
                    const SizedBox(height: 12),
                    infoTile(Icons.school, 'Education', 'BS Computer Science'),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.green.shade50,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          const Icon(Icons.check_circle, color: Colors.green),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('Nested layout example',
                                    style: TextStyle(fontWeight: FontWeight.bold)),
                                Text('Column → Container → Row → Column'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
