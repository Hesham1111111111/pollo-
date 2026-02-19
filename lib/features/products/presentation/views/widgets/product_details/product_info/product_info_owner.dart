import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/widgets/gradient_text.dart';
import 'package:pollo/core/widgets/star_rating.dart';

class ProductInfoOwner extends StatelessWidget {
  const ProductInfoOwner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr(LocaleKeys.owner),
          style: TextStyles.style18SemiBold(),
        ),
        8.verticalSpace,
        Row(
          spacing: 8.w,
          children: [
            Container(
              width: 60.r,
              height: 60.r,
              decoration: const BoxDecoration(
                color: Color(0xff06833E),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  'K',
                  style: TextStyles.style22SemiBold(color: Colors.white),
                ),
              ),
            ),
            Expanded(
              child: Column(
                spacing: 2.h,
                children: [
                  Row(
                    children: [
                      Text(
                        'Khaled Mohamed',
                        style: TextStyles.style16Medium(),
                      ),
                      const Spacer(),
                      SvgPicture.asset(
                        AppSvgs.phoneColored,
                        width: 16.w,
                      ),
                      4.horizontalSpace,
                      GradientText(
                        context.tr(LocaleKeys.contact),
                        style: TextStyles.style12Bold(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${context.tr(LocaleKeys.memberSince)} Oct 7, 2022',
                        style: TextStyles.style12Medium(color: AppColors.secondaryText),
                      ),
                      StarRating(
                        rating: 4,
                        onRatingUpdate: (value) {},
                        ignoreGestures: true,
                        itemSize: 18.w,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
