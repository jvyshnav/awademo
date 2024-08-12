import 'package:flutter/material.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
    this.icon = Icons.search,
    this.showBackground = false,
    this.showBorder = false,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: showBackground ? Colors.white : Colors.black,
            borderRadius: BorderRadius.circular(16),
            border: showBorder ? Border.all(color: Colors.grey) : null),
        child: Row(
          children: [
            Icon(
              icon,
              color: Colors.grey.shade700,
            ),
            const SizedBox(
              width: 32,
            ),
            Text(
              text,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
