import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/features/splash_onboarding/presentation/views/widgets/onboarding_carousel.dart';
import 'package:pollo/features/splash_onboarding/presentation/views/widgets/onboarding_footer.dart';
import 'package:pollo/features/splash_onboarding/presentation/views/widgets/page_indicator.dart';
import 'package:pollo/features/splash_onboarding/presentation/views/widgets/skip_and_back_button.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Center(
          child: OnBoardingCarousel(),
        ),
        Positioned(
          top: 435.h,
          child: const PageIndicator(),
        ),
        Positioned(
          bottom: 32.h,
          right: 16.w,
          left: 16.w,
          child: const OnboardingFooter(),
        ),
        Positioned(
          top: 16.h,
          right: 16.w,
          left: 16.w,
          child: const SkipAndBackButton(),
        ),
      ],
    );
  }
}
