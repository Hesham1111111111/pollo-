import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/app_functions.dart';
import 'package:pollo/features/home/presentation/manager/home_cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeCarouselIndicator extends StatelessWidget {
  const HomeCarouselIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeCubit cubit = context.read<HomeCubit>();

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return IgnorePointer(
          child: AnimatedSmoothIndicator(
            activeIndex: cubit.activeIndex,
            count: 3,
            effect: ExpandingDotsEffect(
              dotWidth: 8.w,
              dotHeight: 6.h,
              spacing: 8.w,
              dotColor: const Color(0xffDBD5C6),
              activeDotColor: Colors.white,
            ),
            textDirection: AppFunctions.isEnglish(context) ? TextDirection.ltr : TextDirection.rtl,
          ),
        );
      },
    );
  }
}
