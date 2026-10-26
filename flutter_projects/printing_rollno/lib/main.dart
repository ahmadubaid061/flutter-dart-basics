import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        AppBar: AppBar(

        )
        body: Center(
          child:Text(
            'Name: Ubaid Ahmad\nRoll No: 2410-0011',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24),
          )

        ),
      ),
    );
  }
}