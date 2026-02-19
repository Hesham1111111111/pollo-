import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/extensions.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/routing/routes.dart';
import 'package:pollo/core/widgets/app_button.dart';
import 'package:pollo/core/widgets/gradient_text.dart';

class VerifyOtpFooter extends StatelessWidget {
  const VerifyOtpFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16.h,
      children: [
        AppButton(
          title: context.tr(LocaleKeys.verify),
          onTap: () {
            context.pushReplacementNamed(Routes.resetPassword);
          },
        ),
        GestureDetector(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 4.w,
            children: [
              Text(
                context.tr(LocaleKeys.didntReceiveCode),
                style: TextStyles.style14Medium(color: AppColors.secondaryText),
              ),
              GradientText(
                context.tr(LocaleKeys.resend),
                style: TextStyles.style16SemiBold(),
              )
            ],
          ),
        )
      ],
    );
  }
}
