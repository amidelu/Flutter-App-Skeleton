import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

class GTheme {
  GTheme._();
  static ThemeData lightTheme = ThemeData.light().copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    // scaffoldBackgroundColor: AppColors.primaryBackground,
    appBarTheme: const AppBarTheme(
      // backgroundColor: AppColors.primaryBackground,
      elevation: 6,
      shadowColor: AppColors.primaryElement,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    ),
    textSelectionTheme: const TextSelectionThemeData(cursorColor: AppColors.primaryElement),
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryElement,
      secondary: AppColors.secondaryElement,
      onError: AppColors.errorColor,
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      // color: AppColors.cardBackground,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.primaryElement,
      size: 46,
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(15.0),
      prefixIconColor: AppColors.primaryElement,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          width: 2,
          color: AppColors.primaryElement,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          width: 2,
          color: AppColors.primaryThirdElementText,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          width: 2,
          color: AppColors.primaryThirdElementText,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          width: 2,
          color: AppColors.errorColor,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          width: 2,
          color: AppColors.secondaryElement,
        ),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData.dark().copyWith(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textSelectionTheme: const TextSelectionThemeData(cursorColor: AppColors.primaryElement),
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryElement,
      secondary: AppColors.secondaryElement,
      onError: AppColors.errorColor,
    ),
    cardTheme: CardTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 6,
      // shadowColor: AppColors.secondaryElement,
    ),
    iconTheme: const IconThemeData(
      color: AppColors.primaryElement,
      size: 24,
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          width: 2,
          color: AppColors.primaryElement,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          width: 2,
          color: AppColors.primaryThirdElementText,
        ),
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          width: 2,
          color: AppColors.primaryThirdElementText,
        ),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          width: 2,
          color: AppColors.errorColor,
        ),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: const BorderSide(
          width: 2,
          color: AppColors.secondaryElement,
        ),
      ),
    ),
  );
}
