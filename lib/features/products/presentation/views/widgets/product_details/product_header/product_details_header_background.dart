import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/app_functions.dart';
import 'package:pollo/features/products/data/model/product/product_model.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_details/product_header/product_header_carousel.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_details/product_header/product_header_carousel_item_count.dart';

class ProductDetailsHeaderBackground extends StatelessWidget {
  final Product product;
  final String heroTag;

  const ProductDetailsHeaderBackground({
    super.key,
    required this.product,
    required this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProductHeaderCarousel(
          product: product,
          heroTag: heroTag,
        ),
        Positioned(
          bottom: 16.h,
          left: AppFunctions.isEnglish(context) ? null : 16.w,
          right: AppFunctions.isEnglish(context) ? 16.w : null,
          child: ProductHeaderCarouselItemCount(
            imagesCount: product.image.length,
          ),
        ),
      ],
    );
  }
}