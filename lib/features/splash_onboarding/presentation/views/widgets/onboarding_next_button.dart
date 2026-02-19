import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:pollo/core/helpers/extensions.dart';
import 'package:pollo/core/helpers/app_functions.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/routing/routes.dart';
import 'package:pollo/features/splash_onboarding/presentation/manager/onboarding_cubit.dart';

class OnboardingNextButton extends StatelessWidget {
  const OnboardingNextButton({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingCubit cubit = context.read<OnboardingCubit>();
    return GestureDetector(
      onTap: () {
        if (cubit.activeIndex == cubit.onboardingItem.length - 1) {
          context.pushNamed(Routes.signIn);
        } else {
          cubit.nextPage();
        }
      },
      child: Container(
        padding: EdgeInsets.all(4.r),
        decoration: const BoxDecoration(
          border: GradientBoxBorder(gradient: AppColors.appGradient),
          shape: BoxShape.circle,
        ),
        child: Container(
          padding: EdgeInsets.all(4.r),
          decoration: const BoxDecoration(
            gradient: AppColors.appGradient,
            shape: BoxShape.circle,
          ),
          child: Icon(
            AppFunctions.isEnglish(context) ? Icons.keyboard_arrow_right_rounded : Icons.keyboard_arrow_left_rounded,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
