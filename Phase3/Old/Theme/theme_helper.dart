import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'package:swipeflix/Provider/provider.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: colorScheme.onPrimaryContainer,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.blue100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(21.h),
              topRight: Radius.circular(20.h),
              bottomLeft: Radius.circular(21.h),
              bottomRight: Radius.circular(20.h),
            ),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

// Custom dark theme
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    // Primary colors
    primary: Color(0XFF5983FC),
    primaryContainer: Color(0XFF0D2166),
    secondary: Colors.black,

    // Error colors
    errorContainer: Color(0XFF3E60C1),
    onError: Color(0XFFECE6F0),
    onErrorContainer: Color(0XFF1D1B20),

    // On colors(text colors)
    onPrimary: Color(0XFF0C2C65),
    onPrimaryContainer: Color(0XFF293556),
    onSecondaryContainer: Color(0XFF9A1525),
  ),
  primaryColor: Colors.black12,
  primaryColorDark: Colors.black12,
  textTheme: TextTheme(
    // Customize text colors for dark mode
    bodyLarge: TextStyle(color: Colors.black12),
    bodyMedium: TextStyle(color: Colors.black12),
    // Add more text styles if needed
  ),
);

// Custom light theme
final lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    // Primary colors
    primary: Color(0XFF1D1B20),
    primaryContainer: Color(0XFF304C9D),
    secondary: Colors.black,

    // Error colors
    errorContainer: Color(0XFF4BB4DE),
    onError: Color(0XFFECE6F0),
    onErrorContainer: Color(0XFF1D1B20),

    // On colors(text colors)
    onPrimary: Color(0XFF0C2C65),
    onPrimaryContainer: Color(0XFFFFFFFF),
    onSecondaryContainer: Color(0XFF9A1525),
  ),
  primaryColor: Colors.white,
  primaryColorDark: Colors.white,
  textTheme: TextTheme(
    // Customize text colors for light mode
    bodyLarge: TextStyle(color: Colors.black),
    bodyMedium: TextStyle(color: Colors.black),
    // Add more text styles if needed
  ),
);

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.gray300,
          fontSize: 16.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.black900,
          fontSize: 32.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.errorContainer,
          fontSize: 24.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        titleLarge: TextStyle(
          color: appTheme.indigo900,
          fontSize: 20.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(
          color: colorScheme.onErrorContainer,
          fontSize: 14.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFF1D1B20),
    primaryContainer: Color(0XFF304C9D),
    secondary: Colors.black,

    // Error colors
    errorContainer: Color(0XFF4BB4DE),
    onError: Color(0XFFECE6F0),
    onErrorContainer: Color(0XFF1D1B20),

    // On colors(text colors)
    onPrimary: Color(0XFF0C2C65),
    onPrimaryContainer: Color(0XFFFFFFFF),
    onSecondaryContainer: Color(0XFF9A1525),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue100 => Color(0XFFAFD6F2);
  Color get blue700 => Color(0XFF3B8AC4);

  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);

  // Gray
  Color get gray300 => Color(0XFFE6E0E9);
  Color get gray900 => Color(0XFF41132C);
  Color get gray90001 => Color(0XFF211F26);

  // Green
  Color get green800 => Color(0XFF1E7932);

  // Indigo
  Color get indigo600 => Color(0XFF336E98);
  Color get indigo700 => Color(0XFF314D9E);
  Color get indigo900 => Color(0XFF0D2C66);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
