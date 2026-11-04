import 'package:flutter/material.dart';

class AlertDialogScreen extends StatelessWidget {
  const AlertDialogScreen({super.key});

  Future<void> showConfirmation(BuildContext context) async {
    // showDialog opens a dialog above the current screen.
    final result = await showDialog<bool>(
      context: context,
      barrierDismissible: false, // tapping outside will not close it
      builder: (dialogContext) {
        return AlertDialog(
          // title: heading
          title: const Text('Delete item?'),
          // content: message/details
          content: const Text('Are you sure you want to delete this item?'),
          // actions: buttons at the bottom
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(dialogContext, false),
              child: const Text('CANCEL'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(dialogContext, true),
              child: const Text('DELETE'),
            ),
          ],
        );
      },
    );

    if (!context.mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(result == true ? 'Delete confirmed' : 'Action cancelled'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AlertDialog')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min, // Column uses only needed height
            children: [
              const Text('Tap to open a confirmation dialog.'),
              const SizedBox(height: 16),
              FilledButton.icon(
                onPressed: () => showConfirmation(context),
                icon: const Icon(Icons.delete),
                label: const Text('Show AlertDialog'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
