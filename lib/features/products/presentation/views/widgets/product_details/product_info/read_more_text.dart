import 'package:easy_localization/easy_localization.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter/material.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';

import '../../../../../data/model/product/product_model.dart';

class ProductInfoDetailsReadMoreText extends StatelessWidget {
  const ProductInfoDetailsReadMoreText({super.key, required this.product});
final Product product;
  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      product.description,
      trimLines: 2,
      trimMode: TrimMode.Line,
      style: TextStyles.style16Medium(color: AppColors.secondaryText),
      moreStyle: TextStyles.style12Bold(),
      lessStyle: TextStyles.style12Bold(),
      trimCollapsedText: context.tr(LocaleKeys.readMore),
      trimExpandedText: context.tr(LocaleKeys.readLess),
    );
  }
}
