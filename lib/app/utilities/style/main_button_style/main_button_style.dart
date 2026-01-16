import 'package:flutter/material.dart';

ButtonStyle mainButtonStyle({
  required Color mainColor,
  double borderRadius = 4.0,
}) {
  return ButtonStyle(
    backgroundColor: MaterialStateProperty.all(
      mainColor,
    ),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          borderRadius,
        ),
      ),
    ),
  );
}
