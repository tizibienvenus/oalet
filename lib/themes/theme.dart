import 'package:flutter/material.dart';
import 'package:oalet/constant/constants.dart';

ThemeData lighThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: Colors.white,
      //appBarTheme: appBarTheme,
      iconTheme: const IconThemeData(color: kContentColorLightTheme),
      //textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme).apply(bodyColor: kContentColorLightTheme),
      colorScheme: const ColorScheme.light(
        primary: kPrimaryColor,
        secondary: kSecondaryColor,
        error: kErrorColor,
      )
  );
}
ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: kContentColorLightTheme,
      //appBarTheme: appBarTheme,
      iconTheme: const IconThemeData(color: kContentColorDarkTheme),
      //textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme).apply(bodyColor: kContentColorDarkTheme),
      colorScheme: const ColorScheme.dark(
        primary: kPrimaryColor,
        secondary: kSecondaryColor,
        error: kErrorColor,
      )
  );
}