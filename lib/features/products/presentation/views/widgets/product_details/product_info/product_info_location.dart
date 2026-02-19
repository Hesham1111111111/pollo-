import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/widgets/gradient_text.dart';

class ProductInfoLocation extends StatelessWidget {
  const ProductInfoLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr(LocaleKeys.location),
          style: TextStyles.style18SemiBold(),
        ),
        8.verticalSpace,
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(10.r),
              child: Image.asset(
                AppImages.map,
                height: 136.h,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 136.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadiusGeometry.circular(10.r),
                color: Colors.black.withAlpha(51),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 4.h),
              decoration: BoxDecoration(
                border: const GradientBoxBorder(gradient: AppColors.appGradient),
                borderRadius: BorderRadiusGeometry.circular(10.r),
                color: const Color(0xffE9EBEF),
              ),
              child: GradientText(
                context.tr(LocaleKeys.seeLocation),
                style: TextStyles.style16SemiBold(),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
