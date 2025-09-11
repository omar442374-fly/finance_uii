import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_fonts.dart';
import 'app_styles.dart';

class AppThemes {
  static final lighttheme = ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: AppColors.primaryColor),
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    fontFamily: AppFonts.mainfontname,
    textTheme: TextTheme(
      titleLarge: AppStyles.primaryHeadLineStyle,
      titleMedium: AppStyles.secondryHeadLineStyle,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      disabledColor: AppColors.secondaryColor,
    ),
  );
}
