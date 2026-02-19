import 'package:flutter/material.dart';
import 'package:pollo/core/widgets/animation_wrapper/animation_wrapper.dart';
import 'package:pollo/features/splash_onboarding/presentation/views/widgets/onboarding_next_button.dart';
import 'package:pollo/features/splash_onboarding/presentation/views/widgets/switch_language.dart';

class OnboardingFooter extends StatelessWidget {
  const OnboardingFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return const AnimationWrapper(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SwitchLanguageButton(),
          OnboardingNextButton(),
        ],
      ),
    );
  }
}
