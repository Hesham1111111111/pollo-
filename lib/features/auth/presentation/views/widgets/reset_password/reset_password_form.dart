import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/helpers/validation/app_validator.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/widgets/app_text_field.dart';
import 'package:pollo/features/auth/presentation/manager/auth_cubit.dart';

import '../../../manager/auth_state.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthCubit cubit = context.read<AuthCubit>();
    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, state) {
        return Column(
          spacing: 16.h,
          children: [
            AppTextField(
              title: context.tr(LocaleKeys.newPassword),
              hintText: context.tr(LocaleKeys.enterYourPassword),
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: GestureDetector(
                onTap: () {
                  cubit.toggleObscure();
                },
                child: SvgPicture.asset(AppSvgs.eye),
              ),
              validator: (value) => AppValidator.validateEmptyField(context, value),
              obscureText: cubit.state.isObscure,
            ),
            AppTextField(
              title: context.tr(LocaleKeys.confirmPassword),
              hintText: context.tr(LocaleKeys.confirmPassword),
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: GestureDetector(
                onTap: () {
                  cubit.toggleObscure();
                },
                child: SvgPicture.asset(AppSvgs.eye),
              ),
              validator: (value) => AppValidator.validateEmptyField(context, value),
              obscureText: cubit.state.isObscure,
            ),
          ],
        );
      },
    );
  }
}
