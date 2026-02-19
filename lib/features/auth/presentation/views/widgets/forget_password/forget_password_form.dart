import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/helpers/validation/app_validator.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/widgets/app_text_field.dart';

class ForgetPasswordForm extends StatelessWidget {
  const ForgetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      title: context.tr(LocaleKeys.email),
      hintText: context.tr(LocaleKeys.enterYourEmail),
      keyboardType: TextInputType.emailAddress,
      suffixIcon: SvgPicture.asset(AppSvgs.email),
      validator: (value) => AppValidator.validateEmail(context, value),
      useGradientBorders: false,
      isFilled: true,
    );
  }
}
