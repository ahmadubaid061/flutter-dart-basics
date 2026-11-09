import 'package:flutter/material.dart';

class UserInfoScreen extends StatelessWidget {
  final Map<String, String> user; // data passed in from the home screen

  const UserInfoScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar shows a back arrow automatically (it calls Navigator.pop).
      appBar: AppBar(title: Text(user['name']!)),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
            const SizedBox(height: 16),
            Text('ID: ${user['id']}', style: const TextStyle(fontSize: 18)),
            Text('Name: ${user['name']}', style: const TextStyle(fontSize: 18)),
            Text('Email: ${user['email']}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () => Navigator.pop(context), // go back
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}