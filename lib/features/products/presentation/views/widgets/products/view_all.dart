import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/widgets/gradient_text.dart';
import 'package:pollo/core/widgets/rotate.dart';

class ViewAll extends StatelessWidget {
  const ViewAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          context.tr(LocaleKeys.featuredAds),
          style: TextStyles.style14Medium(color: AppColors.secondaryText),
        ),
        const Spacer(),
        GradientText(
          context.tr(LocaleKeys.viewAll),
          style: TextStyles.style12Bold(),
        ),
        4.verticalSpace,
        Rotate(
          child: SvgPicture.asset(
            AppSvgs.arrowRight,
            width: 16.w,
            height: 16.h,
          ),
        ),
      ],
    );
  }
}
