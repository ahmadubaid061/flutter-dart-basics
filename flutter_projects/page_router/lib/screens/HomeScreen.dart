import 'package:flutter/material.dart';
import 'UserInfoScreen.dart'; // for the UserInfoScreen class

// Generic dummy data: user1 ... user5
final List<Map<String, String>> users = List.generate(
  5,
  (i) => {
    'id': '${i + 1}',
    'name': 'user${i + 1}',
    'email': 'user${i + 1}@example.com',
  },
);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          return ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person)),
            title: Text(user['name']!),
            trailing: ElevatedButton(
              child: const Text('View'),
              onPressed: () {
                // Put a new screen on top of the current one.
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UserInfoScreen(user: user),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}