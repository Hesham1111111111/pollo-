import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/core/di/service_locator.dart';
import 'package:pollo/features/splash_onboarding/presentation/manager/onboarding_cubit.dart';
import 'package:pollo/features/splash_onboarding/presentation/views/widgets/onboarding_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<OnboardingCubit>(),
      child: const Scaffold(
        body: SafeArea(
          child: OnboardingBody(),
        ),
      ),
    );
  }
}
