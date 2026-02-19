import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/colors.dart';

class HomeCarouselBackground extends StatelessWidget {
  const HomeCarouselBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.primary.withAlpha(160),
            AppColors.primary2.withAlpha(160),
          ],
        ),
        borderRadius: BorderRadius.circular(10.r),
      ),
    );
  }
}
