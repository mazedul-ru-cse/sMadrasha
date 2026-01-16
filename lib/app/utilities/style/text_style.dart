import 'dart:ui';

import 'package:flutter/material.dart';

class CustomTextStyle {

  static const TextStyle title15WhiteNorman = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static const TextStyle title15BlackNorman = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static const TextStyle title15WhiteBold = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle title10WhiteNorman = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  static const TextStyle title10BlackNorman = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  static TextStyle style({double fontSize = 14, FontWeight fontWeight = FontWeight.normal, Color color = Colors.black}){
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }





}