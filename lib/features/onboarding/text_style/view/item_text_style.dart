import 'package:flutter/material.dart';

class ItemTextStyles {
  static TextStyle itemText(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double width = size.width;

    return TextStyle(
      fontSize: _getFontSize(width),
      fontFamily: 'RobotoRegular',
      fontWeight: FontWeight.w400,
      color: const Color(0xFF2F2F48),
      decoration: TextDecoration.none,
    );
  }

  static double _getFontSize(double width) {
    if (width >= 2000) {
      return 24; // Очень большие экраны
    } else if (width >= 1000) {
      return 22; // Большие экраны
    } else if (width >= 600) {
      return 18; // Средние экраны
    } else {
      return 16; // Малые экраны
    }
  }
}