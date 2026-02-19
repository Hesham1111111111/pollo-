import 'package:dotted_border/dotted_border.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/widgets/gradient_text.dart';

class DottedUploadContainer extends StatelessWidget {
  const DottedUploadContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      options: RoundedRectDottedBorderOptions(
        gradient: AppColors.appGradient,
        dashPattern: [15, 8],
        radius: Radius.circular(10.r),
        padding: EdgeInsets.symmetric(horizontal: 26.w, vertical: 16.h),
      ),
      child: Column(
        spacing: 8.h,
        children: [
          SvgPicture.asset(
            AppSvgs.cloudUpload,
            width: 80.w,
            height: 80.h,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 4.h),
            decoration: BoxDecoration(
              border: const GradientBoxBorder(gradient: AppColors.appGradient),
              borderRadius: BorderRadiusGeometry.circular(10.r),
              color: const Color(0xffE9EBEF),
            ),
            child: GradientText(
              context.tr(LocaleKeys.addImage),
              style: TextStyles.style16SemiBold(),
            ),
          ),
          Text(
            context.tr(LocaleKeys.fileSizeLimitMessage),
            style: TextStyles.style16Medium(color: AppColors.secondaryText),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
