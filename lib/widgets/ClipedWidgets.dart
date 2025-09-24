// ignore: file_names
import 'package:flutter/material.dart';

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    // start from the left screen from the bottom
    path.moveTo(0, size.height);
    // draw line from previous point to this point (left side from 20 % of height)
    path.lineTo(0, size.height * 0.2);

    // make first quadratic shape
    path.quadraticBezierTo(
      size.width * 0.30,
      size.height * 0.90,
      size.width * 0.50,
      size.height * 0.7,
    );

    // make second mountain
    path.quadraticBezierTo(
      size.width * 0.70,
      size.height * 0.6,
      size.width * 0.9,
      size.height,
    );

    // make line from the last point of the second mountain , to the bottom right corner (out of screen)
    path.lineTo(size.width, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class TopWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // point of starting
    path.moveTo(0, 0);

    // got to the right side of screen from the top
    path.lineTo(size.width, 0);

    // go to the bottom with 20% of height
    path.lineTo(size.width, size.height * 0.2);

    // make first valley from the right
    path.quadraticBezierTo(
      size.width * 0.78,
      size.height * 0.7,
      size.width * 0.65,
      size.height * 0.44,
    );

    // make second mountain
    path.quadraticBezierTo(
      size.width * 0.55,
      size.height * 0.2,
      size.width * 0.4,
      size.height * 0.4,
    );
    // make third valley
    path.quadraticBezierTo(
      size.width * 0.25,
      size.height * 0.6,
      size.width * 0.03,
      size.height * 0.12,
    );

    // make fourth half mountain
    path.quadraticBezierTo(
      size.width * 0.02,
      size.height * 0.1,
      0,
      size.height * 0.10,
    );

    // close the path
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
