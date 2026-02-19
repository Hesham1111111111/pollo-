import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/core/helpers/extensions.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/features/products/presentation/manager/products_cubit.dart';

class ProductHeaderCarousel extends StatelessWidget {
  const ProductHeaderCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ProductsCubit cubit = context.read<ProductsCubit>();
    final String heroTag = context.getRouteArguments<String>();
    return CarouselSlider.builder(
      itemCount: 4,
      itemBuilder: (context, index, realIndex) {
        return Hero(
          tag: heroTag,
          child: Image.asset(
            AppImages.cat,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
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
