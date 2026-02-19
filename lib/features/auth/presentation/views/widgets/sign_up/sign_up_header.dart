import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/widgets/gradient_text.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 2.w,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GradientText(
          context.tr(LocaleKeys.signUp),
          style: TextStyles.style24SemiBold(),
        ),
        Text(
          context.tr(LocaleKeys.registerWithValidEmail),
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
    );
  }
}
