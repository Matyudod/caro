import 'package:flutter/material.dart';

class ButtonCustomTheme {
  static ButtonStyle style(Color textColor, Color backgroundColor) {
    return ButtonStyle(
      elevation: MaterialStateProperty.all(5),
      shadowColor: MaterialStateProperty.all(textColor),
      padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(vertical: 15.0, horizontal: 35.0)),
      backgroundColor:
          MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
        if (!states.contains(MaterialState.hovered)) return backgroundColor;
        return Color(backgroundColor.value - 100);
      }),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: textColor),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  static ButtonStyle style_mini(Color textColor, Color backgroundColor) {
    return ButtonStyle(
      elevation: MaterialStateProperty.all(3),
      shadowColor: MaterialStateProperty.all(textColor),
      padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(vertical: 4.0, horizontal: 15.0)),
      backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
      foregroundColor: MaterialStateProperty.all<Color>(backgroundColor),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: textColor),
        ),
      ),
    );
  }
}
