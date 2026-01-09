import 'package:flutter/material.dart';

class BuildTag extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const BuildTag({
    Key? key,
    required this.text,
    required this.bgColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(text, style: TextStyle(color: textColor)),
    );
  }
}
