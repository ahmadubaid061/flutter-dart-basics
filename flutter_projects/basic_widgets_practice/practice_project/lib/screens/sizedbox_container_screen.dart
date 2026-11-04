import 'package:flutter/material.dart';

class SizedBoxContainerScreen extends StatelessWidget {
  const SizedBoxContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SizedBox vs Container')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final boxWidth = constraints.maxWidth * 0.78;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text('SizedBox: mainly sizing or spacing',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                Center(
                  child: SizedBox(
                    // width/height set the box dimensions.
                    width: boxWidth,
                    height: constraints.maxWidth * 0.22,
                    child: const ColoredBox(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          'SizedBox',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 28),
                const Text('Container: sizing + decoration + padding + alignment',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 12),
                Center(
                  child: Container(
                    width: boxWidth,
                    height: constraints.maxWidth * 0.22,
                    padding: const EdgeInsets.all(12),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.orange.shade200,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.deepOrange),
                    ),
                    child: const Text('Container'),
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  'SizedBox(height: 16) is commonly used to create space between widgets. '
                  'Choose Container when you need decoration or more layout properties.',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
