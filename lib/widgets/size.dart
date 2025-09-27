import 'package:flutter/material.dart';

class sizeCoffe extends StatelessWidget {
  final Color container;
  final Color borderColor;
  final Color textColor;
  final List<String> text;
  final int index;
  const sizeCoffe({
    super.key,
    required this.container,
    required this.borderColor,
    required this.textColor,
    required this.text,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 2),
      child: Container(
        height: 10,
        width: 24,
        decoration: BoxDecoration(
          color: container,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: borderColor, width: 1),
        ),
        child: Center(
          child: Text(
            text[index],
            style: TextStyle(fontSize: 7, color: textColor),
          ),
        ),
      ),
    );
  }
}
