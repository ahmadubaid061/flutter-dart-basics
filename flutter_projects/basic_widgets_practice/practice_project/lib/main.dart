import 'package:flutter/material.dart';
import 'screens/container_screen.dart';
import 'screens/row_column_screen.dart';
import 'screens/nested_layout_screen.dart';
import 'screens/buttons_snackbar_screen.dart';
import 'screens/alert_dialog_screen.dart';
import 'screens/padding_screen.dart';
import 'screens/sizedbox_container_screen.dart';

void main() => runApp(const LayoutDemoApp());

class LayoutDemoApp extends StatelessWidget {
  const LayoutDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layout Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Each item opens a separate screen.
  static final List<Widget> screens = const [
    ContainerScreen(),
    RowColumnScreen(),
    NestedLayoutScreen(),
    ButtonsSnackbarScreen(),
    AlertDialogScreen(),
    PaddingScreen(),
    SizedBoxContainerScreen(),
  ];

  static const List<String> titles = [
    'Container properties',
    'Row and Column',
    'Nested Rows and Columns',
    'Buttons and SnackBar',
    'AlertDialog',
    'Padding',
    'SizedBox vs Container',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Widgets Demo')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(titles[index]),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => screens[index]),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
