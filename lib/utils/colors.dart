import 'package:flutter/material.dart';

// Material Design Color Palette
const Color red = Color(0xFFFF0000);
const Color pink = Color(0xFFFF4081);
const Color purple = Color(0xFF9C27B0);
const Color deepPurple = Color(0xFF673AB7);
const Color indigo = Color(0xFF3F51B5);
const Color blue = Color(0xFF2196F3);
const Color lightBlue = Color(0xFF03A9F4);
const Color cyan = Color(0xFF00BCD4);
const Color teal = Color(0xFF009688);
const Color green = Color(0xFF4CAF50);
const Color lightGreen = Color(0xFF8BC34A);
const Color lime = Color(0xFFCDDC39);
const Color yellow = Color(0xFFFFEB3B);
const Color amber = Color(0xFFFFC107);
const Color orange = Color(0xFFFF9800);
const Color deepOrange = Color(0xFFFF5722);
const Color brown = Color(0xFF795548);
const Color grey = Color(0xFF9E9E9E);
const Color blueGrey = Color(0xFF607D8B);
//
Color transparent = const Color(0xFFFFFFFF).withOpacity(0.0);
const Color black = Color(0xFF000000);
const Color white = Color(0xFFFFFFFF);
const Color lightblackColor = Color(0xff292D32);

//
const Color primary = Color(0xFF31F920);
const Color darkGreen = Color(0xFF0D5E05);
const Color lightgreen = Color(0xFF89EE51);

MaterialColor primaryColor = MaterialColor(
  primary.value,
  <int, Color>{
    50: primary.withOpacity(0.1),
    100: primary.withOpacity(0.2),
    200: primary.withOpacity(0.3),
    300: primary.withOpacity(0.4),
    400: primary.withOpacity(0.5),
    500: primary.withOpacity(0.6),
    600: primary.withOpacity(0.7),
    700: primary.withOpacity(0.8),
    800: primary.withOpacity(0.9),
    900: primary.withOpacity(1.0),
  },
);

// Common Colors
const Color transparentWhite =
    Color(0x99FFFFFF); // White with transparency (60%)
const Color transparentBlack =
    Color(0x60000000); // Black with transparency (38%)



