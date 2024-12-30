import 'package:flutter/material.dart';

class CustomSnackbar extends StatelessWidget {
  const CustomSnackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            "Select Photo",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            "Choose a photo from your library or take a new one.",
            style: TextStyle(color: Colors.grey[600]),
          ),
          const SizedBox(height: 16),
          ListTile(
            leading: const Icon(Icons.photo_library),
            title: const Text("Choose from Library"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.camera_alt),
            title: const Text("Take Photo"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Cancel", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}
