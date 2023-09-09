
import 'package:flutter/material.dart';

class ShapeBlue extends CustomClipper<Path> {
  final BuildContext context;

  ShapeBlue({required this.context});

  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, 25)
      ..arcToPoint(
        const Offset(66, 132),
        radius: const Radius.circular(120),
        clockwise: true,
      )
      ..lineTo(80, size.width)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 108)
      ..lineTo(MediaQuery.of(context).size.width / 19, 108)
      ..arcToPoint(
        Offset(size.width / 58, 0),
        radius: const Radius.circular(170),
        clockwise: false,
      )
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class ShapeYellow extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..arcToPoint(
        const Offset(68, 160),
        radius: const Radius.circular(140),
        clockwise: true,
      )
      ..lineTo(80, size.width)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 108)
      ..lineTo(size.width / 18, 108)
      ..arcToPoint(
        Offset(size.width / 40, 0),
        radius: const Radius.circular(180),
        clockwise: false,
      )
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
