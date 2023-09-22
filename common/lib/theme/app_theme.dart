import 'package:common/theme/app_colors.dart';
import 'package:common/theme/app_typography.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      //The primary color could be used for the app bar, buttons, and other important UI elements.
      primary: purple40,
      //Color used for text and icons displayed on top of the primary color.
      onPrimary: white,
      //The secondary color could be used for tabs, headers, and other secondary UI elements.
      secondary: purpleGrey80,
      //The onSecondary color could be used for text and icons that appear on top of secondary-colored backgrounds.
      onSecondary: white,
      //The Background color could be used for backgrounds.
      background: lightGray,
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
    textSelectionTheme: const TextSelectionThemeData(cursorColor: purple40),
    appBarTheme: const AppBarTheme(
      backgroundColor: purple40,
      foregroundColor: white
    ),
    dialogTheme: const DialogTheme(
      backgroundColor: white,
      elevation: 2
    ),
    extensions:  <ThemeExtension<AppColors>>[
      AppColors(
        white: white,
        black: black,
        progressbarBackground: Colors.grey.withOpacity(0.3),
      )
    ]
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
      textSelectionTheme: const TextSelectionThemeData(cursorColor: white),
      appBarTheme: const AppBarTheme(
          backgroundColor: black80,
          foregroundColor: white
      ),
      dialogTheme: const DialogTheme(
          backgroundColor: black80,
          elevation: 2
      ),
      extensions: const <ThemeExtension<AppColors>>[
        AppColors(
          white: black,
          black: white,
          progressbarBackground: white,
        )
      ]
  );

}
