import 'package:oalet/constants.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

// This is our  main focus
// Let's apply light and dark theme on our app
// Now let's add dark theme on our app

// Definition de notre theme clair
ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: appBarTheme,
    iconTheme: const IconThemeData(color: kContentColorLightTheme),
    // A remetre apres
    //textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
    //    .apply(bodyColor: kContentColorLightTheme),
    colorScheme: const ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: kContentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: kContentColorLightTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: kPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

// Definition de notre theme sombre
ThemeData darkThemeData(BuildContext context) {
  // Flutter nous fournit par défaut le theme clair
  // Nous le modifions que quand nous en avons bésoin.
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kContentColorLightTheme,
    appBarTheme: appBarTheme.copyWith(backgroundColor: kContentColorLightTheme),
    iconTheme: const IconThemeData(color: kContentColorDarkTheme),
    // A remettre apres
    //textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
    //   .apply(bodyColor: kContentColorDarkTheme),
    colorScheme: const ColorScheme.dark().copyWith(
      primary: kPrimaryColor,
      secondary: kSecondaryColor,
      error: kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kContentColorLightTheme,
      selectedItemColor: Colors.white70,
      unselectedItemColor: kContentColorDarkTheme.withOpacity(0.32),
      selectedIconTheme: const IconThemeData(color: kPrimaryColor),
      showUnselectedLabels: true,
    ),
  );
}

const appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
