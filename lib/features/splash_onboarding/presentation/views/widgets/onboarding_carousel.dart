import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/widgets/gradient_text.dart';
import 'package:pollo/features/splash_onboarding/presentation/manager/onboarding_cubit.dart';

class OnBoardingCarousel extends StatelessWidget {
  const OnBoardingCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final OnboardingCubit cubit = context.read<OnboardingCubit>();
    return CarouselSlider.builder(
      key: ValueKey(context.locale.languageCode),
      itemCount: cubit.onboardingItem.length,
      carouselController: cubit.carouselController,
      itemBuilder: (context, index, realIndex) {
        return Column(
          spacing: 45.h,
          children: [
            Image.asset(
              cubit.onboardingItem[index].image,
              width: 343.w,
              height: 350.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Align(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GradientText(
                      context.tr(cubit.onboardingItem[index].title),
                      style: TextStyles.style24SemiBold(),
                    ),
                    Text(
                      context.tr(cubit.onboardingItem[index].description),
                      style: TextStyles.style20Regular(color: AppColors.secondaryText),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
      options: CarouselOptions(
        height: 650.h,
        autoPlay: false,
        enlargeCenterPage: false,
        enableInfiniteScroll: false,
        scrollPhysics: const BouncingScrollPhysics(),
        viewportFraction: 1,
        onPageChanged: (index, reason) {
          cubit.setCurrentPage(index);
        },
      ),
    );
  }
}
