import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MultiVisibilityDemo(),
    );
  }
}

class MultiVisibilityDemo extends StatefulWidget {
  const MultiVisibilityDemo({super.key});

  @override
  State<MultiVisibilityDemo> createState() => _MultiVisibilityDemoState();
}

class _MultiVisibilityDemoState extends State<MultiVisibilityDemo> {
  bool isFirstTextVisible = true;
  bool isSecondTextVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multiple Visibility Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: isFirstTextVisible,
              child: const Text(
                'Flutter is awesome!',
                style: TextStyle(fontSize: 24),
              ),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  isFirstTextVisible = !isFirstTextVisible;
                });
              },
              child: Text(isFirstTextVisible ? 'Hide Text 1' : 'Show Text 1'),
            ),

            const SizedBox(height: 40),

            Visibility(
              visible: isSecondTextVisible,
              child: const Text(
                'Learn Flutter',
                style: TextStyle(fontSize: 24),
              ),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  isSecondTextVisible = !isSecondTextVisible;
                });
              },
              child: Text(isSecondTextVisible ? 'Hide Text 2' : 'Show Text 2'),
            ),
          ],
        ),
      ),
    );
  }
}