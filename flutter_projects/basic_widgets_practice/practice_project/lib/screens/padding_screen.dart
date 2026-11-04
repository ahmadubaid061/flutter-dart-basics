import 'package:flutter/material.dart';

class PaddingScreen extends StatelessWidget {
  const PaddingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Padding')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Padding is the space INSIDE a widget, between its edge and child.',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Container(
                  // Outer box makes the padding area easy to see.
                  width: constraints.maxWidth * 0.90,
                  color: Colors.orange.shade100,
                  child: Padding(
                    // all: equal padding on all four sides
                    padding: const EdgeInsets.all(24),
                    child: Container(
                      color: Colors.indigo.shade100,
                      padding: const EdgeInsets.all(8),
                      child: const Text('24 px padding around this inner box'),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.green.shade100,
                  child: Padding(
                    // only: customize individual sides
                    padding: const EdgeInsets.only(
                      left: 20,
                      top: 8,
                      right: 20,
                      bottom: 8,
                    ),
                    child: const Text('Padding.only(left, top, right, bottom)'),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  color: Colors.purple.shade100,
                  child: Padding(
                    // symmetric: horizontal and vertical values
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                    child: const Text('Padding.symmetric(horizontal, vertical)'),
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Padding vs Margin: padding is inside; margin is outside.'),
              ],
            ),
          );
        },
      ),
    );
  }
}
