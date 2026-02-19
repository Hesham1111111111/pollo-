import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/extensions.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/widgets/app_button.dart';
import 'package:pollo/core/widgets/gradient_text.dart';

class SignUpFooter extends StatelessWidget {
  const SignUpFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButton(
          title: context.tr(LocaleKeys.signUp),
          onTap: () {},
        ),
        16.verticalSpace,
        GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 4.w,
            children: [
              Text(
                context.tr(LocaleKeys.haveAccount),
                style: TextStyles.style14Medium(color: AppColors.secondaryText),
              ),
              GradientText(
                context.tr(LocaleKeys.signIn),
                style: TextStyles.style16SemiBold(),
              )
            ],
          ),
        )
      ],
    );
  }
}
