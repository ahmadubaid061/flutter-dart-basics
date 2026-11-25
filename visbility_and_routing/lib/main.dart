import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: VisibilityDemo(),
    );
  }
}

class VisibilityDemo extends StatefulWidget {
  const VisibilityDemo({super.key});

  @override
  State<VisibilityDemo> createState() => _VisibilityDemoState();
}

class _VisibilityDemoState extends State<VisibilityDemo> {
  // Controls whether the text is shown or hidden
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Visibility Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: isVisible,
              child: const Text(
                'Welcome to Flutter',
                style: TextStyle(fontSize: 24),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible; 
                });
              },
              child: Text(isVisible ? 'Hide Text' : 'Show Text'),
            ),
          ],
        ),
      ),
    );
  }
}