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
import 'package:pollo/features/products/data/model/product/product_model.dart';

class ProductsListViewItem extends StatelessWidget {
  const ProductsListViewItem({
    super.key,
    required this.heroTag,
    required this.product,
  });

  final String heroTag;
  final Product product;


  int getDaysAgo() {
    try {
      final createdAt = DateTime.parse(product.createdAt);
      final difference = DateTime.now().difference(createdAt).inDays;
      return difference >= 0 ? difference : 0;
    } catch (_) {
      return 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    final daysAgo = getDaysAgo();

    return Container(
      height: 155.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.border),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.horizontal(
              left: AppFunctions.isEnglish(context) ? Radius.circular(8.r) : Radius.zero,
              right: AppFunctions.isEnglish(context) ? Radius.zero : Radius.circular(8.r),
            ),
            child: Hero(
              tag: heroTag,
              child: Image.network(
                product.image ?? '',
                height: 155.h,
                width: 130.w,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 155.h,
                    width: 130.w,
                    color: Colors.grey.shade200,
                    child: Icon(Icons.image_not_supported, size: 40.sp),
                  );
                },
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
                          product.name ?? '',
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
                    '${context.tr(LocaleKeys.price)} ${product.price ?? ''} L.E',
                    style: TextStyles.style16Medium(),
                  ),
                  StarRating(
                    rating: (product.merchant?.reviewsAvgRating ?? 0).toDouble(),                    ignoreGestures: true,
                    onRatingUpdate: (value) {},
                  ),
                  Text(
                    '${product.state?.name ?? ''} - ${product.city?.name ?? ''}',
                    style: TextStyles.style14Medium(
                      color: AppColors.secondaryText,
                    ),
                  ),
                  Text(
                    context.tr(
                      LocaleKeys.daysAgo.plural(daysAgo),
                    ),
                    style: TextStyles.style14Medium(
                      color: AppColors.secondaryText,
                    ),
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