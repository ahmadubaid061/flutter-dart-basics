import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // LayoutBuilder gives the available width, so the content adapts to the screen.
    return Scaffold(
      appBar: AppBar(title: const Text('Container Properties')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final contentWidth = constraints.maxWidth * 0.90;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: SizedBox(
                width: contentWidth,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      // width: relative to the available screen width
                      width: contentWidth,
                      // height: adapts to screen width (not a fixed pixel size)
                      height: constraints.maxWidth * 0.32,
                      // color: background fill
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade100,
                        // borderRadius: rounded corners
                        borderRadius: BorderRadius.circular(16),
                        // border: outline around the container
                        border: Border.all(color: Colors.indigo, width: 1.5),
                      ),
                      // padding: space between the container edge and its child
                      padding: const EdgeInsets.all(16),
                      // alignment: positions the child inside the container
                      alignment: Alignment.center,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_circle, size: 36, color: Colors.indigo),
                          SizedBox(width: 12),
                          Flexible(
                            child: Text(
                              'Profile card: icon + text',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      // Another content card. It sizes to its child plus padding.
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(bottom: 12), // outside spacing
                      decoration: BoxDecoration(
                        color: Colors.orange.shade100,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.email, color: Colors.deepOrange),
                          SizedBox(width: 12),
                          Expanded(child: Text('ubaid@example.com')),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16, // left and right padding
                        vertical: 12, // top and bottom padding
                      ),
                      color: Colors.green.shade100,
                      child: const Row(
                        children: [
                          Icon(Icons.location_on, color: Colors.green),
                          SizedBox(width: 8),
                          Expanded(child: Text('Peshawar • Location information')),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Try changing height, width, padding, margin, alignment, '
                      'color, border, and borderRadius.',
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
