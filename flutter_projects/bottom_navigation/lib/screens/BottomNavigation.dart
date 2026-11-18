import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({super.key});
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}
class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        currentIndex: _selectedIndex,
        selectedIconTheme: IconThemeData(size: 40),
        onTap: _onItemTap,
        selectedItemColor: Colors.greenAccent,
        unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 1 ? Icons.search : Icons.abc),
              label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "setting"),
        ],
      ),
    );
  }
}