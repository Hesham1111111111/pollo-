import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pollo/core/helpers/app_functions.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/widgets/animation_wrapper/animation_wrapper.dart';
import 'package:pollo/core/widgets/gradient_text.dart';
import 'package:pollo/core/widgets/rotate.dart';

class ForgetPasswordHeader extends StatelessWidget {
  const ForgetPasswordHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.h,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.asset(
              AppImages.authHeader,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 16.h,
              right: AppFunctions.isEnglish(context) ? null : 16.w,
              left: AppFunctions.isEnglish(context) ? 16.w : null,
              child: SafeArea(
                child: AnimationWrapper(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: EdgeInsets.all(8.r),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: AppColors.background,
                      ),
                      child: Rotate(
                        child: SvgPicture.asset(
                          AppSvgs.arrowLeft,
                          width: 24.w,
                          height: 24.h,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            spacing: 2.w,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GradientText(
                context.tr(LocaleKeys.forgetPassword),
                style: TextStyles.style24SemiBold(),
              ),
              Text(
                context.tr(LocaleKeys.dontWorry),
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
