import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/features/home/presentation/manager/home_cubit.dart';
import 'package:pollo/features/home/presentation/views/widgets/home_carousel_header/home_carousel_item.dart';

class HomeCarouselBuilder extends StatelessWidget {
  const HomeCarouselBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeCubit cubit = context.read<HomeCubit>();
    return CarouselSlider.builder(
      key: ValueKey(context.locale.languageCode),
      itemCount: 3,
      carouselController: cubit.carouselController,
      itemBuilder: (context, index, realIndex) {
        return const HomeCarouselItem();
      },
      options: CarouselOptions(
        height: 170.h,
        autoPlay: false,
        autoPlayInterval: const Duration(seconds: 10),
        enlargeCenterPage: false,
        enableInfiniteScroll: true,
        scrollPhysics: const BouncingScrollPhysics(),
        viewportFraction: 1,
        onPageChanged: (index, reason) {
          cubit.setCurrentPage(index);
        },
      ),
    );
  }
}
