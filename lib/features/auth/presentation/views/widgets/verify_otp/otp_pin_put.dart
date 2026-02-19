import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';

class VerifyOtpPinPut extends StatelessWidget {
  const VerifyOtpPinPut({
    super.key,
    this.length = 6,
    this.controller,
    this.validator,
    this.onCompleted,
  });

  final int length;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onCompleted;

  @override
  Widget build(BuildContext context) {
    return Pinput(
      length: length,
      controller: controller,
      validator: validator,
      onCompleted: onCompleted,
      cursor: Container(
        width: 2.w,
        height: 20.h,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.primary2,
              AppColors.primary,
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      ),
      errorTextStyle: TextStyles.style14Regular(color: AppColors.error),
      defaultPinTheme: PinTheme(
        height: 52.h,
        width: 50.w,
        decoration: BoxDecoration(
          color: AppColors.fieldFillColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      errorPinTheme: PinTheme(
        height: 52.h,
        width: 50.w,
        decoration: BoxDecoration(
          color: AppColors.error,
          borderRadius: BorderRadius.circular(10.r),
        ),
      ),
      focusedPinTheme: PinTheme(
        height: 52.h,
        width: 50.w,
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColors.primary),
        ),
      ),
    );
  }
}
