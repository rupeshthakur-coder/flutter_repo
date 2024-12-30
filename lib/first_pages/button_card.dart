import 'package:flutter/material.dart';
import 'package:flutter_rapo/first_pages/snack_bar.dart';

class ButtonCard extends StatelessWidget {
  final String title;
  final String text;
  final IconData? icon;
  final Color color;
  final double width;

  const ButtonCard({
    super.key,
    required this.title,
    required this.text,
    required this.icon,
    required this.color,
    required this.width,
  });

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
            return const CustomSnackbar(
              title: "Select Photo",
              text: "Choose photo from your libary or take a new one",
            );
          },
        );
      },
      child: Container(
        width: width,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
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
