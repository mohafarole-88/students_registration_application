import 'package:flutter/material.dart';

const primaryColor = Color(0XFFE0E0E0);
const SecondaryColor = Color(0XFF03A9F4);
const ThirdColor = Color(0XFF00695C);
const DarkColor = Color(0XFF263238);
const whiteColor = Colors.white;

class AppTheme {
  static TextStyle LargeTitle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30.0,
    color: whiteColor,
  );

  static TextStyle ButtonTitle = TextStyle(
    color: SecondaryColor,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static get LoginButtonsStyle => ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: SecondaryColor,
        minimumSize: Size(100, 40),
      );

  static Icon styledIcon(IconData iconData) {
    return Icon(
      iconData,
      size: 35,
      color: whiteColor,
    );
  }
}
