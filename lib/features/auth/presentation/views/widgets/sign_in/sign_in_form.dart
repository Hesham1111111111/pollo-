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
import 'package:pollo/core/widgets/app_button.dart';
import 'package:pollo/features/auth/presentation/manager/auth_cubit.dart';
import 'package:pollo/features/auth/presentation/manager/auth_state.dart';
import '../../../../data/model/login_request_model.dart';
import '../../../manager/request_state.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();

    return Form(
      key: _formKey,
      child: Column(
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
            buildWhen: (prev, curr) => prev.isObscure != curr.isObscure,
            builder: (context, state) {
              return AppTextField(
                controller: passController,
                title: context.tr(LocaleKeys.password),
                hintText: context.tr(LocaleKeys.enterYourPassword),
                keyboardType: TextInputType.visiblePassword,
                obscureText: state.isObscure,
                suffixIcon: GestureDetector(
                  onTap: cubit.toggleObscure,
                  child: SvgPicture.asset(AppSvgs.eye),
                ),
                validator: (value) =>
                    AppValidator.validateEmptyField(context, value),
              );
            },
          ),          8.verticalSpace,

          GestureDetector(
            onTap: () => context.pushNamed(Routes.forgetPassword),
            child: GradientText(
              context.tr(LocaleKeys.forgetPassword),
              style: TextStyles.style14SemiBold(),
            ),
          ),
          24.verticalSpace,

          BlocConsumer<AuthCubit, AuthState>(
            listenWhen: (prev, curr) => prev.loginState != curr.loginState,
            listener: (context, state) {
              state.loginState.when(
                initial: () {},
                loading: () {},
                success: (data) {
                  Navigator.pushReplacementNamed(context, Routes.bottomNav);
                },
                error: (message) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(message)));
                },
              );
            },
            buildWhen: (prev, curr) => prev.loginState != curr.loginState,
            builder: (context, state) {
              final isLoading = state.loginState is LoadingState;

              return isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : AppButton(
                title: context.tr(LocaleKeys.signIn),
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    cubit.login(LoginRequest(
                      email: emailController.text.trim(),
                      password: passController.text.trim(),
                    ));
                  }
                },
              );
            },
          ),          16.verticalSpace,

          GestureDetector(
            onTap: () => context.pushNamed(Routes.signUp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 4.w,
              children: [
                Text(
                  context.tr(LocaleKeys.dontHaveAccount),
                  style: TextStyles.style14Medium(),
                ),
                GradientText(
                  context.tr(LocaleKeys.signUp),
                  style: TextStyles.style16SemiBold(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}