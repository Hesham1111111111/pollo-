import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/features/home/presentation/views/widgets/home_carousel_header/home_carousel_background.dart';
import 'package:pollo/features/home/presentation/views/widgets/home_carousel_header/home_carousel_builder.dart';
import 'package:pollo/features/home/presentation/views/widgets/home_carousel_header/home_carousel_indicator.dart';

class HomeCarouselHeader extends StatelessWidget {
  const HomeCarouselHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const HomeCarouselBackground(),
        const HomeCarouselBuilder(),
        Positioned(
          bottom: 20.h,
          child: const HomeCarouselIndicator(),
        ),
      ],
    );
  }
}
