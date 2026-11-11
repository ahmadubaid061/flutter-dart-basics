import 'package:flutter/material.dart';
import 'screens/RegisterScreen.dart'; // for the RegisterScreen class

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
    );
  }
}

// ---------------------------------------------------------------
// SCREEN 1: the form
// ---------------------------------------------------------------

// ---------------------------------------------------------------
// SCREEN 2: the success screen
// It receives the data through its constructor.
// ---------------------------------------------------------------
