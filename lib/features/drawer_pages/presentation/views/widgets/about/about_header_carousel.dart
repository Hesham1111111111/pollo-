import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/features/drawer_pages/presentation/manager/drawer_pages_cubit.dart';

class AboutHeaderCarousel extends StatelessWidget {
  const AboutHeaderCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final DrawerPagesCubit cubit = context.read<DrawerPagesCubit>();
    return CarouselSlider.builder(
      itemCount: 4,
      itemBuilder: (context, index, realIndex) {
        return Image.asset(
          AppImages.cat,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        );
      },
      options: CarouselOptions(
        height: double.infinity,
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
