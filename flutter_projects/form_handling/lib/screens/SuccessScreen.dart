import 'package:flutter/material.dart';


class SuccessScreen extends StatelessWidget {
  final String name;
  final String age;
  final String email;
  final String phone;
  final String password;
  final String city;

  const SuccessScreen({
    super.key,
    required this.name,
    required this.age,
    required this.email,
    required this.phone,
    required this.password,
    required this.city,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Success')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello $name! You have successfully registered',
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text('Here is your data:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Text('Name: $name'),
            Text('Age: $age'),
            Text('Email: $email'),
            Text('Phone: $phone'),
            Text('Password: ${'•' * password.length}'),
            Text('City: $city'),
          ],
        ),
      ),
    );
  }
}