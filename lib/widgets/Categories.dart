import 'package:coffe_shop_ui/controller.dart/HomePageController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

class Categories extends StatelessWidget {
  HomePageController controller = Get.put(HomePageController());

  final Color textcolor;
  final Color color;
  final String image;
  final String name;
  final int index;
  Categories({
    super.key,
    required this.color,
    required this.index,
    required this.image,
    required this.name,
    required this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.Switch(index);
      },
      child: Animate(
        effects: [
          FlipEffect(duration: Duration(seconds: 15)),
          ScaleEffect(duration: Duration(seconds: 5)),
        ],
        child: Container(
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
        ),
      ),
    );
  }
}
