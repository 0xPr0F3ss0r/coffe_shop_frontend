import 'package:coffe_shop_ui/constant/Colors.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatefulWidget {
  final int initialPageIndex;
  const CustomNavigationBar({super.key, required this.initialPageIndex});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  late int pageIndex;

  @override
  void initState() {
    super.initState();
    pageIndex = widget.initialPageIndex;
  }

  @override
  Widget build(BuildContext context) {
    double itemWidth = MediaQuery.of(context).size.width / 4;
    return Stack(
      children: [
        Container(
          height: 77,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(width: 0.1, color: Colors.grey),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = 0;
                      });
                    },
                    child: Image.asset(
                      "assets/Home.png",
                      color: pageIndex == 0
                          ? colors.navBarActive
                          : colors.navBarDesactive,
                      height: 24,
                      width: 24,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 12,
                      color: pageIndex == 0
                          ? colors.navBarActive
                          : colors.navBarDesactive,
                      fontWeight: pageIndex == 0
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = 1;
                      });
                    },
                    child: Icon(
                      Icons.favorite,
                      color: pageIndex == 1
                          ? colors.navBarActive
                          : colors.navBarDesactive,
                      size: 24,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "Favorite",
                    style: TextStyle(
                      fontSize: 12,
                      color: pageIndex == 1
                          ? colors.navBarActive
                          : colors.navBarDesactive,
                      fontWeight: pageIndex == 1
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = 2;
                      });
                    },
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Image.asset(
                          "assets/Vector.png",
                          color: pageIndex == 2
                              ? colors.navBarActive
                              : colors.navBarDesactive,
                          width: 24,
                          height: 24,
                        ),
                        Positioned(
                          top: -7,
                          right: -10,
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                              color: colors.navBarActive,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                "3",
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "Cart",
                    style: TextStyle(
                      fontSize: 12,
                      color: pageIndex == 2
                          ? colors.navBarActive
                          : colors.navBarDesactive,
                      fontWeight: pageIndex == 2
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        pageIndex = 3;
                      });
                    },
                    child: CircleAvatar(
                      radius: 16,
                      backgroundColor: pageIndex == 3
                          ? Colors.red.withOpacity(0.15)
                          : Colors.transparent,
                      child: ClipOval(
                        child: SizedBox(
                          width: 32,
                          height: 32,
                          child: Image.asset(
                            "assets/profile.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 12,
                      color: pageIndex == 3
                          ? colors.navBarActive
                          : colors.navBarDesactive,
                      fontWeight: pageIndex == 3
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        AnimatedPositioned(
          duration: const Duration(seconds: 3),
          curve: Curves.easeInOutExpo,
          left: pageIndex == 0
              ? pageIndex * itemWidth + 0.5
              : pageIndex == 1
              ? pageIndex * itemWidth + 5
              : pageIndex == 2
              ? pageIndex * itemWidth + 6
              : pageIndex * itemWidth,
          top: 0,
          child: Container(
            width: itemWidth,
            alignment: Alignment.topCenter,
            child: Container(
              width: 30,
              height: 3,
              decoration: BoxDecoration(
                color: colors.navBarActive,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
