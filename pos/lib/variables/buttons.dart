import 'package:flutter/material.dart';
import 'package:pos/variables/colors.dart';

abstract class ButtonStyles {
  static ButtonStyle circularWhiteButton = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.white),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(60),
      ),
    ),
  );
  static ButtonStyle circularPinkButton = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(CustomColors.pink),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(60),
      ),
    ),
  );
  static ButtonStyle semiSharpWhiteButton = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.white),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
  static ButtonStyle circularGreenButton = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Color(0xFF1DB14B)),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(60),
      ),
    ),
  );
  static ButtonStyle searchButtonStyle = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Color(0xff251C25)),
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(60),
      ),
    ),
  );
}
