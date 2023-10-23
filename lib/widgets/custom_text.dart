import 'package:flutter/material.dart';
import '../utils/colors.dart';

// ignore: camel_case_types
class cText extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? bgcolor;
  final double? size;
  final double? letterspacing;
  final double? wordspacing;
  final int? maxlines;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final TextDecoration? decoration;
  final FontStyle? fontstyle;
  final FontWeight? fontWeight;

  const cText(
      {super.key,
      required this.text,
      this.color,
      this.bgcolor,
      this.size,
      this.maxlines,
      this.letterspacing,
      this.wordspacing,
      this.overflow,
      this.decoration,
      this.fontWeight,
      this.fontstyle,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Text(
      text,
      maxLines: maxlines,
      textAlign: textAlign ?? TextAlign.start,
      style: TextStyle(
          fontSize: size ?? width * 0.038,
          fontWeight: fontWeight ?? FontWeight.normal,
          backgroundColor: bgcolor ?? transparent,
          decoration: decoration ?? TextDecoration.none,
          overflow: overflow ?? TextOverflow.visible,
          letterSpacing: letterspacing ?? 0,
          wordSpacing: wordspacing ?? 0,
          fontStyle: fontstyle ?? FontStyle.normal,
          color: color ?? Colors.black),
    );
  }
}
