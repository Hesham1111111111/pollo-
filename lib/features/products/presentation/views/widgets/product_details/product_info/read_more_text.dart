import 'package:easy_localization/easy_localization.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:readmore/readmore.dart';
import 'package:flutter/material.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';

class ProductInfoDetailsReadMoreText extends StatelessWidget {
  const ProductInfoDetailsReadMoreText({super.key});

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
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
