import 'package:flutter/material.dart';
import 'package:pollo/core/resources/colors.dart';

class AppTheme {
  static ThemeData appTheme(BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.background,
      fontFamily: 'Cairo',
      textSelectionTheme:  TextSelectionThemeData(
        selectionColor: AppColors.primary.withAlpha(64),
        selectionHandleColor: AppColors.primary,
        cursorColor: AppColors.primary,
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: <TargetPlatform, PageTransitionsBuilder>{
          TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
        },
      ),
    );
  }
}
