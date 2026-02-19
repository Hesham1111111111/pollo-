import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/extensions.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/routing/routes.dart';
import 'package:pollo/core/widgets/app_button.dart';
import 'package:pollo/features/auth/presentation/views/widgets/forget_password/forget_password_form.dart';
import 'package:pollo/features/auth/presentation/views/widgets/forget_password/forget_password_header.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24.h,
      children: [
        const ForgetPasswordHeader(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            spacing: 24.h,
            children: [
              const ForgetPasswordForm(),
              AppButton(
                title: context.tr(LocaleKeys.continue_),
                onTap: () {
                  context.pushReplacementNamed(Routes.verifyOtp);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
