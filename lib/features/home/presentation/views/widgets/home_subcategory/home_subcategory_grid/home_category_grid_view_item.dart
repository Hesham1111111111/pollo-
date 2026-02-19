import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';

class HomeSubcategoryGridViewItem extends StatelessWidget {
  const HomeSubcategoryGridViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(10.r),
        border: const GradientBoxBorder(gradient: AppColors.appGradient),
      ),
      child: Column(
        spacing: 8.h,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                border: const GradientBoxBorder(gradient: AppColors.appGradient),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(
                  AppImages.doctor2,
                ),
              ),
            ),
          ),
          Text(
            'Pet Animals',
            style: TextStyles.style16Bold(),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
