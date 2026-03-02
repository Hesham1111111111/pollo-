import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/features/home/presentation/manager/home_cubit.dart';
import 'package:pollo/features/home/presentation/manager/home_state.dart';
import 'package:pollo/features/home/presentation/views/widgets/home_carousel_header/home_carousel_item.dart';

import 'home_carousel_shimmer.dart';

class HomeCarouselBuilder extends StatelessWidget {
  const HomeCarouselBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeCubit cubit = context.read<HomeCubit>();
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (BuildContext context, HomeState state) {
        return state.subCategoriesState.when(
          initial: () => const SizedBox(),

          loading: () => CarouselSlider.builder(
            key: ValueKey(context.locale.languageCode),
            itemCount: 3,
            carouselController: cubit.carouselController,
            itemBuilder: (context, index, realIndex) {
              return const HomeCarouselItemShimmer();
            },
            options: CarouselOptions(
              height: 170.h,
              viewportFraction: 1,
              enableInfiniteScroll: true,
            ),
          ),

          success: (subCategories) {
            return CarouselSlider.builder(
              key: ValueKey(context.locale.languageCode),
              itemCount: subCategories.length,
              carouselController: cubit.carouselController,
              itemBuilder: (context, index, realIndex) {
                final category = subCategories[index];
                return HomeCarouselItem(subCategory: category);
              },
              options: CarouselOptions(
                height: 170.h,
                autoPlay: false,
                enableInfiniteScroll: true,
                viewportFraction: 1,
                onPageChanged: (index, reason) {
                  cubit.setCurrentPage(index);
                },
              ),
            );
          },

          error: (message) => Center(
            child: Text(message),
          ),
        );
      },

    );
  }
}
