import 'package:flutter/material.dart';

abstract class AppColors {
  AppColors._();

  static const Color background = Color(0xffFFFFFF);
  static const Color mainText = Color(0xff0F0F0F);
  static const Color secondaryText = Color(0xff544F4F);
  static const Color green = Color(0xff65B111);
  static const Color error = Color(0xffC8383A);
  static const Color primary = Color(0xffC20167);
  static const Color primary2 = Color(0xff064198);
  static const Color lightPrimary = Color(0xffC388B3);
  static const Color fieldFillColor = Color(0xffECECEC);
  static const Color icon = Color(0xff9B9B9B);
  static const Color border = Color(0xffDBD5D5);
  static const Color card = Color(0xffF1F1F1);
  static const Color icon2 = Color(0xff7C7C7C);
  static const Gradient appGradient = LinearGradient(
    colors: [
      AppColors.primary2,
      AppColors.primary,
    ],
  );
}
