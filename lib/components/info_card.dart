import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String imagePath;
  final String text;
  final VoidCallback? onTap;
  final Color backgroundColor;
  final double borderRadius;

  const InfoCard({
    Key? key,
    required this.imagePath,
    required this.text,
    this.onTap,
    this.backgroundColor = const Color(0xFF2A3352),
    this.borderRadius = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Row(
          children: [
            Image.asset(imagePath, width: 20, height: 20, fit: BoxFit.cover),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            const Icon(Icons.arrow_forward_ios, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
