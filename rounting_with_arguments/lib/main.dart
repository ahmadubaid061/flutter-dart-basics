import 'package:flutter/material.dart';

import 'package:rounting_with_arguments/screens/HomeScreen.dart';
import 'package:rounting_with_arguments/screens/DetailsScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // The first screen shown when the app starts
      initialRoute: '/',

      // Named routes: route name -> screen
      routes: {
        '/': (context) => const HomeScreen(),
        '/details': (context) => const DetailsScreen(),
      },
    );
  }
}

// ---------------- Home Screen ----------------

// ---------------- Details Screen ----------------
