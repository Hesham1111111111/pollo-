import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.hintText,
    this.title,
    this.isFilled = false,
    this.suffixIcon,
    this.prefixIcon,
    this.maxLines = 1,
    this.keyboardType,
    this.controller,
    this.validator,
    this.obscureText = false,
    this.useGradientBorders = true,
    this.showTitle = true,
    this.hintStyle,
    this.hintTextColor,
    this.constraints,
    this.borderRadius,
    this.titleStyle,
  });

  final String? title;
  final String hintText;
  final bool isFilled;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final int maxLines;
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final bool obscureText;
  final bool useGradientBorders;
  final bool showTitle;
  final TextStyle? hintStyle;
  final Color? hintTextColor;
  final BoxConstraints? constraints;
  final double? borderRadius;
  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: showTitle ? 8.h : 0,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showTitle)
          Text(
            title ?? '',
            style: titleStyle ?? TextStyles.style18Medium(),
          ),
        TextFormField(
          style: TextStyles.style16Medium(),
          keyboardType: keyboardType,
          maxLines: maxLines,
          controller: controller,
          validator: validator,
          obscureText: obscureText,
          textAlignVertical: TextAlignVertical.center,
          cursorWidth: 1.2.w,
          cursorHeight: 20.h,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: hintStyle ?? TextStyles.style16Medium(color: hintTextColor ?? AppColors.secondaryText),
            isDense: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            filled: isFilled,
            fillColor: AppColors.fieldFillColor,
            errorStyle: TextStyles.style14Regular(color: AppColors.error),
            suffixIcon: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              child: suffixIcon,
            ),
            constraints: constraints,
            prefixIcon: prefixIcon,
            border: useGradientBorders ? buildGradientOutlineInputBorder() : buildOutlineInputBorder(borderColor: AppColors.primary),
            enabledBorder: useGradientBorders ? buildGradientOutlineInputBorder() : buildOutlineInputBorder(borderColor: Colors.transparent),
            focusedBorder: useGradientBorders ? buildGradientOutlineInputBorder() : buildOutlineInputBorder(borderColor: Colors.transparent),
            errorBorder: buildOutlineInputBorder(borderColor: AppColors.error),
            focusedErrorBorder: useGradientBorders ? buildGradientOutlineInputBorder() : buildOutlineInputBorder(borderColor: AppColors.error),
          ),
        )
      ],
    );
  }

  OutlineInputBorder buildOutlineInputBorder({required Color borderColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
      borderSide: BorderSide(color: borderColor),
    );
  }

  GradientOutlineInputBorder buildGradientOutlineInputBorder() {
    return GradientOutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius ?? 12.r),
      gradient: AppColors.appGradient,
      width: 1.5.w,
    );
  }
}
