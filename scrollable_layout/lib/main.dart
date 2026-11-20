import 'package:flutter/material.dart';
import 'package:scrollable_layout/screens/ScrollableLayout.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Floating AppBar Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        scaffoldBackgroundColor: Colors.grey[200],
        useMaterial3: true,
      ),
      home: const ScrollableLayout(),
    );
  }
}

