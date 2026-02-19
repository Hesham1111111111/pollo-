import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/app_functions.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/features/splash_onboarding/presentation/manager/onboarding_cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingCubit cubit = context.read<OnboardingCubit>();

    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        return IgnorePointer(
          child: AnimatedSmoothIndicator(
            activeIndex: cubit.activeIndex,
            count: cubit.onboardingItem.length,
            effect: ExpandingDotsEffect(
              dotWidth: 8.w,
              dotHeight: 8.h,
              spacing: 8.w,
              dotColor: AppColors.lightPrimary,
              activeDotColor: AppColors.primary,
            ),
            textDirection: AppFunctions.isEnglish(context) ? TextDirection.ltr : TextDirection.rtl,
          ),
        );
      },
    );
  }
}
