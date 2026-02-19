import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/app_functions.dart';
import 'package:pollo/features/drawer_pages/presentation/views/widgets/about/about_header_carousel.dart';
import 'package:pollo/features/drawer_pages/presentation/views/widgets/about/about_header_carousel_item_count.dart';

class AboutDetailsHeaderBackground extends StatelessWidget {
  const AboutDetailsHeaderBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const AboutHeaderCarousel(),
        Positioned(
          bottom: 16.h,
          left: AppFunctions.isEnglish(context) ? null : 16.w,
          right: AppFunctions.isEnglish(context) ? 16.w : null,
          child: const AboutHeaderCarouselItemCount(),
        ),
      ],
    );
  }
}
