import 'package:flutter/material.dart';

class GetStartedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    final path = Path()
      ..lineTo(0, height * 0.8)
      ..lineTo(width * 0.88, height)
      ..lineTo(width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
