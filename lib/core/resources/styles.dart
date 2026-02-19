import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/font_weight_helper.dart';
import 'package:pollo/core/resources/colors.dart';

class TextStyles {
  TextStyles._();

  static TextStyle style24SemiBold({Color? color}) {
    return TextStyle(
      fontSize: 24.sp,
      color: color ?? AppColors.mainText,
      fontWeight: FontWeightHelper.semiBold,
    );
  }

  static TextStyle style20Regular({Color? color}) {
    return TextStyle(
      fontSize: 20.sp,
      color: color ?? AppColors.mainText,
      fontWeight: FontWeightHelper.regular,
    );
  }

  static TextStyle style20SemiBold({Color? color}) {
    return TextStyle(
      fontSize: 20.sp,
      color: color ?? AppColors.mainText,
      fontWeight: FontWeightHelper.semiBold,
    );
  }

  static TextStyle style22SemiBold({Color? color}) {
    return TextStyle(
      fontSize: 22.sp,
      color: color ?? AppColors.mainText,
      fontWeight: FontWeightHelper.semiBold,
    );
  }

  static TextStyle style16Medium({Color? color}) {
    return TextStyle(
      fontSize: 16.sp,
      color: color ?? AppColors.mainText,
      fontWeight: FontWeightHelper.medium,
    );
  }

  static TextStyle style18SemiBold({Color? color}) {
    return TextStyle(
      fontSize: 18.sp,
      color: color ?? AppColors.mainText,
      fontWeight: FontWeightHelper.semiBold,
    );
  }

  static TextStyle style12Medium({Color? color}) {
    return TextStyle(
      fontSize: 12.sp,
      color: color ?? AppColors.mainText,
      fontWeight: FontWeightHelper.medium,
    );
  }

  static TextStyle style12Bold({Color? color}) {
    return TextStyle(
      fontSize: 12.sp,
      color: color ?? AppColors.mainText,
      fontWeight: FontWeightHelper.bold,
    );
  }

  static TextStyle style14Medium({Color? color}) {
    return TextStyle(
      fontSize: 14.sp,
      color: color ?? AppColors.mainText,
      fontWeight: FontWeightHelper.medium,
    );
  }

  static TextStyle style16Bold({Color? color}) {
    return TextStyle(
      fontSize: 16.sp,
      color: color ?? AppColors.mainText,
      fontWeight: FontWeightHelper.bold,
    );
  }

  static TextStyle style16Regular({Color? color}) {
    return TextStyle(
      fontSize: 16.sp,
      color: color ?? AppColors.mainText,
      fontWeight: FontWeightHelper.regular,
    );
  }

  static TextStyle style14Regular({Color? color}) {
    return TextStyle(
      fontSize: 14.sp,
      color: color ?? AppColors.mainText,
      fontWeight: FontWeightHelper.regular,
    );
  }

  static TextStyle style14SemiBold({Color? color}) {
    return TextStyle(
      fontSize: 14.sp,
      color: color ?? AppColors.mainText,
      fontWeight: FontWeightHelper.semiBold,
    );
  }

  static TextStyle style16SemiBold({Color? color}) {
    return TextStyle(
      fontSize: 16.sp,
      color: color ?? AppColors.mainText,
      fontWeight: FontWeightHelper.semiBold,
    );
  }

  static TextStyle style18Medium({Color? color}) {
    return TextStyle(
      fontSize: 18.sp,
      color: color ?? AppColors.mainText,
      fontWeight: FontWeightHelper.medium,
    );
  }

  static TextStyle style12Regular({Color? color}) {
    return TextStyle(
      fontSize: 12.sp,
      color: color ?? AppColors.mainText,
      fontWeight: FontWeightHelper.regular,
    );
  }
}
