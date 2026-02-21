import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/helpers/validation/app_validator.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/widgets/app_text_field.dart';
import 'package:pollo/core/widgets/app_button.dart';
import 'package:pollo/features/auth/presentation/manager/auth_cubit.dart';
import 'package:pollo/features/auth/presentation/manager/auth_state.dart';
import 'package:pollo/features/auth/presentation/views/widgets/sign_up/sign_up_footer.dart';
import '../../../../data/model/register_request_model.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AuthCubit>();

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Expanded(
                child: AppTextField(
                  controller: firstNameController,
                  title: context.tr(LocaleKeys.firestName),
                  hintText: context.tr(LocaleKeys.enterYourName),
                  keyboardType: TextInputType.name,
                  suffixIcon: SvgPicture.asset(AppSvgs.person),
                  validator: (value) =>
                      AppValidator.validateEmptyField(context, value),
                ),
              ),
              16.verticalSpace,
              SizedBox(width: 10.w),
              Expanded(
                child: AppTextField(
                  controller: lastNameController,
                  title: context.tr(LocaleKeys.lastName),
                  hintText: context.tr(LocaleKeys.enterYourName),
                  keyboardType: TextInputType.name,
                  suffixIcon: SvgPicture.asset(AppSvgs.person),
                  validator: (value) =>
                      AppValidator.validateEmptyField(context, value),
                ),
              ),
              16.verticalSpace,
            ],
          ),

          AppTextField(
            controller: emailController,
            title: context.tr(LocaleKeys.email),
            hintText: context.tr(LocaleKeys.enterYourEmail),
            keyboardType: TextInputType.emailAddress,
            suffixIcon: SvgPicture.asset(AppSvgs.email),
            validator: (value) => AppValidator.validateEmail(context, value),
          ),
          16.verticalSpace,

          AppTextField(
            controller: phoneController,
            title: context.tr(LocaleKeys.phone),
            hintText: context.tr(LocaleKeys.enterValidPhone),
            keyboardType: TextInputType.number,
            suffixIcon: SvgPicture.asset(AppSvgs.phone),
            validator: (value) =>
                AppValidator.validateEmptyField(context, value),
          ),
          16.verticalSpace,

          BlocBuilder<AuthCubit, AuthState>(
            buildWhen: (prev, curr) => curr.maybeWhen(
              obscureTextChanged: (_) => true,
              orElse: () => false,
            ),
            builder: (context, state) {
              final isObscure = state.maybeWhen(
                obscureTextChanged: (value) => value,
                orElse: () => cubit.obscureText,
              );

              return AppTextField(
                controller: passwordController,
                title: context.tr(LocaleKeys.password),
                hintText: context.tr(LocaleKeys.enterYourPassword),
                keyboardType: TextInputType.visiblePassword,
                obscureText: isObscure,
                suffixIcon: GestureDetector(
                  onTap: cubit.toggleObscure,
                  child: SvgPicture.asset(AppSvgs.eye),
                ),
                validator: (value) =>
                    AppValidator.validateEmptyField(context, value),
              );
            },
          ),
          16.verticalSpace,

          BlocBuilder<AuthCubit, AuthState>(
            buildWhen: (prev, curr) => curr.maybeWhen(
              obscureTextChanged: (_) => true,
              orElse: () => false,
            ),
            builder: (context, state) {
              final isObscure = state.maybeWhen(
                obscureTextChanged: (value) => value,
                orElse: () => cubit.obscureText,
              );

              return AppTextField(
                controller: confirmController,
                title: context.tr(LocaleKeys.confirmPassword),
                hintText: context.tr(LocaleKeys.confirmPassword),
                keyboardType: TextInputType.visiblePassword,
                obscureText: isObscure,
                suffixIcon: GestureDetector(
                  onTap: cubit.toggleObscure,
                  child: SvgPicture.asset(AppSvgs.eye),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return context.tr(LocaleKeys.enterYourPassword);
                  }
                  if (value != passwordController.text) {
                    return context.tr(LocaleKeys.passwordMismatch);
                  }
                  return null;
                },
              );
            },
          ),
          24.verticalSpace,

          BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {
              state.maybeWhen(
                error: (message) {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text(message)));
                },
                success: (authResponse) {
                  Navigator.pushReplacementNamed(context, '/bottomNav');
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              final isLoading =
              state.maybeWhen(loading: () => true, orElse: () => false);

              return isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : AppButton(
                title: context.tr(LocaleKeys.signUp),
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    cubit.register(RegisterRequest(
                      firstName: firstNameController.text.trim(),
                      lastName: lastNameController.text.trim(),
                      email: emailController.text.trim(),
                      phone: phoneController.text.trim(),
                      password: passwordController.text.trim(),
                      passwordConfirmation:
                      confirmController.text.trim(),
                    ));
                  }
                },
              );
            },
          ),
          16.verticalSpace,
          const SignUpFooter(),
        ],
      ),
    );
  }
}