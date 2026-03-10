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
import 'package:pollo/features/products/data/model/product/product_model.dart';

class ProductInfoOwner extends StatelessWidget {
  const ProductInfoOwner({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    final merchant = product.merchant;

    final firstLetter =
    (merchant?.firstName ?? '').isNotEmpty ? merchant!.firstName[0] : '';

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr(LocaleKeys.owner),
          style: TextStyles.style18SemiBold(),
        ),
        8.verticalSpace,
        Row(
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
                  firstLetter,
                  style: TextStyles.style22SemiBold(color: Colors.white),
                ),
              ),
            ),
            8.horizontalSpace,
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        merchant?.firstName ?? '',
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
                        style: TextStyles.style12Medium(
                          color: AppColors.secondaryText,
                        ),
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
            ),
          ],
        )
      ],
    );
  }
}