import 'package:flutter/material.dart';

class ButtonsSnackbarScreen extends StatelessWidget {
  const ButtonsSnackbarScreen({super.key});

  void showMessage(BuildContext context, String message) {
    // ScaffoldMessenger displays a SnackBar on the current Scaffold.
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          // duration: how long the SnackBar remains visible
          duration: const Duration(seconds: 2),
          // behavior: floating or fixed
          behavior: SnackBarBehavior.floating,
          action: SnackBarAction(
            label: 'UNDO',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Undo pressed')),
              );
            },
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons and SnackBar')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: SizedBox(
              width: constraints.maxWidth * 0.88,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // ElevatedButton: raised button
                  ElevatedButton(
                    onPressed: () => showMessage(context, 'Elevated button tapped!'),
                    child: const Text('Elevated Button'),
                  ),
                  const SizedBox(height: 12),
                  // FilledButton: filled Material button
                  FilledButton(
                    onPressed: () => showMessage(context, 'Filled button tapped!'),
                    child: const Text('Filled Button'),
                  ),
                  const SizedBox(height: 12),
                  // OutlinedButton: button with an outline
                  OutlinedButton(
                    onPressed: () => showMessage(context, 'Outlined button tapped!'),
                    child: const Text('Outlined Button'),
                  ),
                  const SizedBox(height: 12),
                  // TextButton: simple text-style button
                  TextButton(
                    onPressed: () => showMessage(context, 'Text button tapped!'),
                    child: const Text('Text Button'),
                  ),
                  const SizedBox(height: 12),
                  // IconButton: button displaying an icon
                  IconButton(
                    onPressed: () => showMessage(context, 'Icon button tapped!'),
                    icon: const Icon(Icons.favorite),
                    color: Colors.red,
                    iconSize: 32,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
