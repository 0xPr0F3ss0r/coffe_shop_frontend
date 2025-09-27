import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final Color textcolor;
  final Color color;
  final String image;
  final String name;
  const Categories({
    super.key,
    required this.color,
    required this.image,
    required this.name,
    required this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 99,
      height: 30,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Color(0xFFC1AFA2), width: 1.5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/$image.png"),
          name.toLowerCase == "BREAKFAST"
              ? SizedBox(width: 5)
              : name == "JUS FREE" || name == "JUS"
              ? SizedBox(width: 6)
              : name == "COFFEE"
              ? SizedBox(width: 8)
              : SizedBox.shrink(),
          Text(
            name,
            style: TextStyle(
              fontSize: name == "COFFEE" ? 10 : 12,
              color: textcolor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
