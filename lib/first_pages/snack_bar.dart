import 'package:flutter/material.dart';

class CustomSnackbar extends StatelessWidget {
  final String title;
  final String text;

  const CustomSnackbar({
    super.key,
    required this.title,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            text,
            style: TextStyle(color: Colors.grey[600]),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(
              Icons.photo_library,
              color: Colors.blue,
            ),
            title: const Text(
              "Choose from Library",
              style: TextStyle(color: Colors.blue),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.camera_alt,
              color: Colors.blue,
            ),
            title: const Text(
              "Take Photo",
              style: TextStyle(color: Colors.blue),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Cancel", style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
    );
  }
}
