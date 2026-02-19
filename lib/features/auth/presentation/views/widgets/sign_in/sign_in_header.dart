import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/widgets/gradient_text.dart';

class SignInHeader extends StatelessWidget {
  const SignInHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          AppImages.authHeader,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            spacing: 2.w,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GradientText(
                context.tr(LocaleKeys.signIn),
                style: TextStyles.style24SemiBold(),
              ),
              Text(
                context.tr(LocaleKeys.signInToRegisterAccount),
                style: TextStyles.style16Medium(color: AppColors.secondaryText),
              ),
              4.verticalSpace,
              Container(
                width: 40.w,
                height: 6.h,
                decoration: BoxDecoration(
                  gradient: AppColors.appGradient,
                  borderRadius: BorderRadius.circular(
                    30.r,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
