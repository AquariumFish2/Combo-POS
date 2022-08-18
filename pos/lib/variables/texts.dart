import 'package:flutter/material.dart';
import 'package:pos/variables/colors.dart';

abstract class TextStyles {
  static TextStyle whiteDetailsStyle = const TextStyle(
    color: Colors.white,
    fontSize: 20,
  );
  static TextStyle whiteButtonsStyle = const TextStyle(
    color: Colors.black,
    fontSize: 18,
  );
  static TextStyle pinkDetailsStyle = TextStyle(
    color: CustomColors.pink,
    fontSize: 18,
  );
  static TextStyle whiteSmallDetailsStyle = const TextStyle(
    color: Colors.white,
    fontSize: 16,
  );
}
