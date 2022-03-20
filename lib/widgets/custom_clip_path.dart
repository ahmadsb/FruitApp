import 'package:flutter/material.dart';

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, (size.height / 2) * 1.10);

    path.cubicTo(
        (size.width * .10),
        (size.height / 2) - size.height * .10,
        size.width - ((size.width * .10)),
        (size.height / 2) * 1.1,
        (size.width),
        (size.height / 2) - (size.height * .10));

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
