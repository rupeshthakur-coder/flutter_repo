import 'package:flutter/material.dart';
import 'package:flutter_rapo/snack_bar.dart';

class ButtonCard extends StatelessWidget {
  final String title;
  final IconData? icon;
  const ButtonCard({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(20),
            ),
          ),
          builder: (BuildContext context) {
            return const CustomSnackbar();
          },
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) Icon(icon, color: Colors.white),
            if (icon != null) const SizedBox(width: 10),
            Text(
              title,
              style: const TextStyle(fontSize: 12, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
