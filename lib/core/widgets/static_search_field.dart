import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';

class StaticSearchField extends StatelessWidget {
  const StaticSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.fieldFillColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Row(
        spacing: 8.w,
        children: [
          SvgPicture.asset(
            AppSvgs.search,
            width: 20.w,
            height: 20.h,
          ),
          Text(
            context.tr(LocaleKeys.searchHint),
            style: TextStyles.style16Medium(color: AppColors.icon2),
          )
        ],
      ),
    );
  }
}
