import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    drawer: Container(),
    appBar: AppBar(
      actions: [
        IconButton(
          icon: const Icon(Icons.home, color: Colors.white,),
          onPressed: () {
            print('Home button pressed');
          },
        ),
        IconButton(
          
          icon: const Icon(Icons.settings, color: Colors.white,),
          onPressed: () {
            print('Settings button pressed');
          },
        ),
      ],
      leading: IconButton(
        icon: const Icon(Icons.menu, color: Colors.white,),
        onPressed: () {
          print('Menu button pressed');
        },
      ),
      title: const Text('App Bar', style: TextStyle(color: Colors.white),),
      centerTitle: true,
      backgroundColor: Colors.blue,
    ),
    body: Container(
      color: Colors.white,
      child: Center(
        child: Text('Hello, World!', style: TextStyle(color: Colors.blue),),
      ),
      
    ),
    );
  }
}
