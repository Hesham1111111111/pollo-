import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../manager/auth_cubit.dart';
import '../../../manager/auth_state.dart';
import '../../../../data/model/register_request_model.dart';
import '../../../../../../core/helpers/locale_keys.dart';
import '../../../../../../core/helpers/validation/app_validator.dart';
import '../../../../../../core/resources/assets.dart';
import '../../../../../../core/widgets/app_text_field.dart';
import '../../../../../../core/widgets/app_button.dart';
import '../../../../../../core/helpers/request_state/request_state.dart';
import 'sign_up_footer.dart';

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
                  title: LocaleKeys.firestName,
                  hintText: LocaleKeys.enterYourName,
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
                  title: LocaleKeys.lastName,
                  hintText: LocaleKeys.enterYourName,
                  keyboardType: TextInputType.name,
                  suffixIcon: SvgPicture.asset(AppSvgs.person),
                  validator: (value) =>
                      AppValidator.validateEmptyField(context, value),
                ),
              ),
              16.verticalSpace,
            ],
          ),
          16.verticalSpace,
          AppTextField(
            controller: emailController,
            title: LocaleKeys.email,
            hintText: LocaleKeys.enterYourEmail,
            keyboardType: TextInputType.emailAddress,
            suffixIcon: SvgPicture.asset(AppSvgs.email),
            validator: (value) => AppValidator.validateEmail(context, value),
          ),
          16.verticalSpace,
          AppTextField(
            controller: phoneController,
            title: LocaleKeys.phone,
            hintText: LocaleKeys.enterValidPhone,
            keyboardType: TextInputType.number,
            suffixIcon: SvgPicture.asset(AppSvgs.phone),
            validator: (value) =>
                AppValidator.validateEmptyField(context, value),
          ),
          16.verticalSpace,
          BlocBuilder<AuthCubit, AuthState>(
            buildWhen: (prev, curr) => prev.isObscure != curr.isObscure,
            builder: (context, state) {
              return AppTextField(
                controller: passwordController,
                title: LocaleKeys.password,
                hintText: LocaleKeys.enterYourPassword,
                keyboardType: TextInputType.visiblePassword,
                obscureText: state.isObscure,
                suffixIcon: GestureDetector(
                  onTap: cubit.toggleObscure,
                  child: state.isObscure
                      ? Icon(Icons.visibility_off)
                      : SvgPicture.asset(AppSvgs.eye),
                ),
                validator: (value) =>
                    AppValidator.validateEmptyField(context, value),
              );
            },
          ),
          16.verticalSpace,
          BlocBuilder<AuthCubit, AuthState>(
            buildWhen: (prev, curr) => prev.isObscure != curr.isObscure,
            builder: (context, state) {
              return AppTextField(
                controller: confirmController,
                title: LocaleKeys.confirmPassword,
                hintText: LocaleKeys.confirmPassword,
                keyboardType: TextInputType.visiblePassword,
                obscureText: state.isObscure,
                suffixIcon: GestureDetector(
                  onTap: cubit.toggleObscure,
                  child: state.isObscure
                      ? Icon(Icons.visibility_off)
                      : SvgPicture.asset(AppSvgs.eye),
                ),
                validator: (value)=> AppValidator.validateEmptyField(context, value),
              );
            },
          ),
          24.verticalSpace,
          BlocBuilder<AuthCubit, AuthState>(
            buildWhen: (prev, curr) => prev.signUpState != curr.signUpState,
            builder: (context, state) {
              final isLoading = state.signUpState is LoadingState;

              return isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : AppButton(
                      title: LocaleKeys.signUp,
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          cubit.register(RegisterRequest(
                            firstName: firstNameController.text.trim(),
                            lastName: lastNameController.text.trim(),
                            email: emailController.text.trim(),
                            phone: phoneController.text.trim(),
                            password: passwordController.text.trim(),
                            passwordConfirmation: confirmController.text.trim(),
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
