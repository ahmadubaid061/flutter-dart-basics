import 'package:flutter/material.dart';

// import 'package:login_form/screens/LoginScreen.dart';
import 'package:login_form/screens/UsersScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const UsersScreen());
  }
}
