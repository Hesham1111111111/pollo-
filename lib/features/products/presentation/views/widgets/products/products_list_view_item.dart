import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pollo/core/helpers/app_functions.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/widgets/star_rating.dart';

class ProductsListViewItem extends StatelessWidget {
  const ProductsListViewItem({
    super.key,
    required this.heroTag,
  });

  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.horizontal(
              left: AppFunctions.isEnglish(context) ? Radius.circular(8.r) : null,
              right: AppFunctions.isEnglish(context) ? null : Radius.circular(8.r),
            ),
            child: Hero(
              tag: heroTag,
              child: Image.asset(
                AppImages.cat,
                height: 155.h,
                width: 130.w,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          'White Cat',
                          style: TextStyles.style16Medium(),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SvgPicture.asset(
                        AppSvgs.heartOutlined,
                        width: 24.r,
                        height: 24.r,
                      ),
                    ],
                  ),
                  Text(
                    '${context.tr(LocaleKeys.price)} 500 L.E',
                    style: TextStyles.style16Medium(),
                  ),
                  StarRating(
                    rating: 3.2,
                    ignoreGestures: true,
                    onRatingUpdate: (value) {},
                  ),
                  Text(
                    'Sharkia - Zagazig',
                    style: TextStyles.style14Medium(color: AppColors.secondaryText),
                  ),
                  Text(
                    context.tr(
                      LocaleKeys.daysAgo.plural(2),
                    ),
                    style: TextStyles.style14Medium(color: AppColors.secondaryText),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
