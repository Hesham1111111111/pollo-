import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pollo/core/helpers/extensions.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/routing/routes.dart';
import 'package:pollo/core/widgets/animation_wrapper/animation_wrapper.dart';
import 'package:pollo/core/widgets/gradient_text.dart';
import 'package:pollo/core/widgets/rotate.dart';
import 'package:pollo/features/splash_onboarding/presentation/manager/onboarding_cubit.dart';

class SkipAndBackButton extends StatelessWidget {
  const SkipAndBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingCubit cubit = context.read<OnboardingCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder<OnboardingCubit, OnboardingState>(
          builder: (context, state) {
            return AnimationWrapper(
              visible: cubit.activeIndex > 0,
              startDelay: const Duration(seconds: 0),
              child: GestureDetector(
                onTap: () {
                  cubit.previousPage();
                },
                child: Container(
                  padding: EdgeInsets.all(8.r),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.lightPrimary,
                  ),
                  child: Rotate(
                    child: SvgPicture.asset(
                      AppSvgs.arrowLeft,
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
        AnimationWrapper(
          child: GestureDetector(
            onTap: () {
              SystemChrome.setSystemUIOverlayStyle(
                const SystemUiOverlayStyle(
                  statusBarColor: Colors.transparent,
                  statusBarIconBrightness: Brightness.light, // white icons on Android
                  statusBarBrightness: Brightness.dark, // white icons on iOS
                ),
              );
              context.pushNamed(Routes.signIn);
            },
            child: GradientText(
              context.tr(LocaleKeys.skip),
              style: TextStyles.style24SemiBold(),
            ),
          ),
        ),
      ],
    );
  }
}
