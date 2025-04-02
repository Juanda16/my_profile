import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorSchemeSeed: Colors.blue, // Choose your seed color
      // Customize fonts, card themes, button themes etc. for a modern look
      fontFamily: 'Roboto', // Example: Ensure you add font files
      cardTheme: CardTheme(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      // Add more customizations
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorSchemeSeed: Colors.blue, // Choose your seed color
      fontFamily: 'Roboto',
      cardTheme: CardTheme(
        elevation: 4, // Slightly more elevation might look good in dark
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      // Customize dark theme specifics
    );
  }
}
