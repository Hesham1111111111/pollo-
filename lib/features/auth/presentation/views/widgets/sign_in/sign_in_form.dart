import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pollo/core/helpers/extensions.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/helpers/validation/app_validator.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/routing/routes.dart';
import 'package:pollo/core/widgets/app_text_field.dart';
import 'package:pollo/core/widgets/gradient_text.dart';
import 'package:pollo/features/auth/presentation/manager/auth_cubit.dart';

import '../../../manager/auth_state.dart';

class SignInForm extends StatelessWidget {
   SignInForm({
    super.key,
  });
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final AuthCubit cubit = context.read<AuthCubit>();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        AppTextField(
          controller: emailController,
          title: context.tr(LocaleKeys.email),
          hintText: context.tr(LocaleKeys.enterYourEmail),
          keyboardType: TextInputType.emailAddress,
          suffixIcon: SvgPicture.asset(AppSvgs.email),
          validator: (value) => AppValidator.validateEmail(context, value),
        ),
        16.verticalSpace,
        BlocBuilder<AuthCubit, AuthState>(
          buildWhen: (previous, current) => current is TextObscureChanged,
          builder: (context, state) {
            return AppTextField(
              controller: passController,
              title: context.tr(LocaleKeys.password),
              hintText: context.tr(LocaleKeys.enterYourPassword),
              keyboardType: TextInputType.visiblePassword,
              suffixIcon: GestureDetector(
                onTap: () {
                  cubit.toggleObscure();
                },
                child: SvgPicture.asset(AppSvgs.eye),
              ),
              validator: (value) => AppValidator.validateEmptyField(context, value),
              obscureText: cubit.obscureText,
            );
          },
        ),
        8.verticalSpace,
        GestureDetector(
          onTap: () {
            context.pushNamed(Routes.forgetPassword);
          },
          child: GradientText(
            context.tr(LocaleKeys.forgetPassword),
            style: TextStyles.style14SemiBold(),
          ),
        ),
      ],
    );
  }
}
