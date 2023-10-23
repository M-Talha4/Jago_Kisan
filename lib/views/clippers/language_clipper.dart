import 'package:flutter/material.dart';

class LanguageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    final path = Path()
      // ..lineTo(0, height * 0.8)
      // ..lineTo(width * 0.88, height)
      // ..lineTo(width, 0);
      ..moveTo(0, height * 0.65)
      ..quadraticBezierTo(0, height, width * 0.22, height)
      ..lineTo(width * 0.28, height)
      ..lineTo(width * 0.85, height * 0.55)
      ..quadraticBezierTo(width, height * 0.35, width * 0.85, height * 0.15)
      ..lineTo(width * 0.32, height * 0.15)
      ..quadraticBezierTo(0, height * 0.15, 0, height * 0.65);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
