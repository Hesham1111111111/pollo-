import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/features/splash_onboarding/data/models/onboarding_page_model.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingInitial());
  final CarouselSliderController carouselController = CarouselSliderController();

  final List<OnboardingPageModel> onboardingItem = [
    OnboardingPageModel(
      image: AppImages.onboarding1,
      title: LocaleKeys.welcomeTitle,
      description: LocaleKeys.welcomeDescription,
    ),
    OnboardingPageModel(
      image: AppImages.onboarding2,
      title: LocaleKeys.allInOneTitle,
      description: LocaleKeys.allInOneDescription,
    ),
    OnboardingPageModel(
      image: AppImages.onboarding3,
      title: LocaleKeys.expertAdviceTitle,
      description: LocaleKeys.expertAdviceDescription,
    ),
  ];

  int activeIndex = 0;

  /// Update active index from carousel scroll
  void setCurrentPage(int index) {
    activeIndex = index;
    emit(CarouselIndexChanged());
  }

  /// Move to next page if available
  void nextPage() {
    if (activeIndex < onboardingItem.length - 1) {
      activeIndex++;
      carouselController.animateToPage(
        activeIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      emit(CarouselIndexChanged());
    }
  }

  /// Move to previous page if available
  void previousPage() {
    if (activeIndex > 0) {
      activeIndex--;
      carouselController.animateToPage(
        activeIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      emit(CarouselIndexChanged());
    }
  }
}
