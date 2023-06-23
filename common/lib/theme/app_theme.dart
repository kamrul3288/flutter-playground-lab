import 'package:common/theme/app_colors.dart';
import 'package:common/theme/app_typography.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        //The primary color could be used for the app bar, buttons, and other important UI elements.
        primary: purple80,
        //Color used for text and icons displayed on top of the primary color.
        onPrimary: white,
        //The secondary color could be used for tabs, headers, and other secondary UI elements.
        secondary: purpleGrey40,
        //The onSecondary color could be used for text and icons that appear on top of secondary-colored backgrounds.
        onSecondary: white,
        //The Background color could be used for backgrounds.
        background: purple80,
        //The onBackground color could be used for text and icons that appear on top of background backgrounds.
        onBackground: white,
        //The surface color that affect surfaces of components, such as cards, sheets, and menus.
        surface: white,
        // It refers top of surface text and icon colors
        onSurface: black,
        error: red,
        onError: white,
      ),
      textTheme: AppTypography.typography,

      appBarTheme: const AppBarTheme(
          backgroundColor: purple80
      ),

  );

  static final darkTheme = ThemeData(
      useMaterial3: true,
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        //The primary color could be used for the app bar, buttons, and other important UI elements.
        primary: black80,
        //Color used for text and icons displayed on top of the primary color.
        onPrimary: white,
        //The secondary color could be used for tabs, headers, and other secondary UI elements.
        secondary: black,
        //The onSecondary color could be used for text and icons that appear on top of secondary-colored backgrounds.
        onSecondary: white,
        //The Background color could be used for backgrounds.
        background: black,
        //The onBackground color could be used for text and icons that appear on top of background backgrounds.
        onBackground: white,
        //The surface color that affect surfaces of components, such as cards, sheets, and menus.
        surface: black80,
        // It refers top of surface text and icon colors
        onSurface: white,
        error: red,
        onError: white,
      ),
      textTheme: AppTypography.typography,

      appBarTheme: const AppBarTheme(
      backgroundColor: black80
  )

  );
}
