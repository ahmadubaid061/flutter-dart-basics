import 'package:flutter/material.dart';

class MyListViewBuilder extends StatelessWidget {
  MyListViewBuilder({super.key});

  final List<Map<String, dynamic>> items = [
    {
      "title": "Apple",
      "subtitle": "Best Fruit in the world",
      "icon": Icons.apple,
    },
    {
      "title": "Orange",
      "subtitle": "Best Fruit in the world",
      "icon": Icons.apple,
    },
    {
      "title": "Mango",
      "subtitle": "Best Fruit in the world",
      "icon": Icons.apple,
    },
    {
      "title": "Banana",
      "subtitle": "Best Fruit in the world",
      "icon": Icons.apple,
    },
    {
      "title": "Cherry",
      "subtitle": "Best Fruit in the world",
      "icon": Icons.apple,
    },
    {
      "title": "Apple",
      "subtitle": "Best Fruit in the world",
      "icon": Icons.apple,
    },
    {
      "title": "Apple",
      "subtitle": "Best Fruit in the world",
      "icon": Icons.apple,
    },
    {
      "title": "Apple",
      "subtitle": "Best Fruit in the world",
      "icon": Icons.apple,
    },
    {
      "title": "Apple",
      "subtitle": "Best Fruit in the world",
      "icon": Icons.apple,
    },
    {
      "title": "Apple",
      "subtitle": "Best Fruit in the world",
      "icon": Icons.apple,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View Builder"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('About the fruit'),
                    content: Text(
                      items[index]['title'],
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              leading: CircleAvatar(
                child: Icon(items[index]['icon']),
              ),
              title: Text(items[index]['title']),
              subtitle: Text(items[index]['subtitle']),
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
            ),
          );
        },
      ),
    );
  }
}