import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/extensions.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/routing/routes.dart';
import 'package:pollo/core/widgets/app_button.dart';
import 'package:pollo/core/widgets/gradient_text.dart';
import 'package:pollo/features/auth/presentation/manager/auth_cubit.dart';

class SignInFooter extends StatelessWidget {
  const SignInFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AppButton(
        title: context.tr(LocaleKeys.signIn),
        onTap: () {
          context.pushNamed(Routes.bottomNav);
        },
      ),
      16.verticalSpace,
      GestureDetector(
        onTap: () {
          context.pushNamed(Routes.signUp);
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 4.w,
          children: [
            Text(
              context.tr(LocaleKeys.dontHaveAccount),
              style: TextStyles.style14Medium(color: AppColors.secondaryText),
            ),
            GradientText(
              context.tr(LocaleKeys.signUp),
              style: TextStyles.style16SemiBold(),
            )
          ],
        ),
      )
    ]);
  }
}
