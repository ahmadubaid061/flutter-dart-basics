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
      title: 'Visibility Control',

      // App-wide color theme
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        scaffoldBackgroundColor: Colors.teal.shade50,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
      ),
      home: const MultiVisibilityDemo(),
    );
  }
}

class MultiVisibilityDemo extends StatefulWidget {
  const MultiVisibilityDemo({super.key});

  @override
  State<MultiVisibilityDemo> createState() => _MultiVisibilityDemoState();
}

class _MultiVisibilityDemoState extends State<MultiVisibilityDemo> {
  // One bool variable for each text
  bool isFirstTextVisible = true;
  bool isSecondTextVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toggle Texts'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ---------- Card 1 ----------
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    // Fixed height keeps the card from shrinking when hidden
                    SizedBox(
                      height: 40,
                      child: Visibility(
                        visible: isFirstTextVisible,
                        child: const Text(
                          'Flutter is awesome!',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.teal,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        foregroundColor: Colors.white,
                      ),
                      icon: Icon(
                        isFirstTextVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      label: Text(
                        isFirstTextVisible ? 'Hide Text 1' : 'Show Text 1',
                      ),
                      onPressed: () {
                        setState(() {
                          isFirstTextVisible = !isFirstTextVisible;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // ---------- Card 2 ----------
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                      child: Visibility(
                        visible: isSecondTextVisible,
                        child: const Text(
                          'Learn Flutter',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.deepOrange,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        foregroundColor: Colors.white,
                      ),
                      icon: Icon(
                        isSecondTextVisible
                            ? Icons.visibility_off
                            : Icons.visibility,
                      ),
                      label: Text(
                        isSecondTextVisible ? 'Hide Text 2' : 'Show Text 2',
                      ),
                      onPressed: () {
                        setState(() {
                          isSecondTextVisible = !isSecondTextVisible;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}