import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_details/product_info/read_more_text.dart';

class ProductInfoDetails extends StatelessWidget {
  const ProductInfoDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.tr(LocaleKeys.details),
          style: TextStyles.style18SemiBold(),
        ),
        const ProductInfoDetailsReadMoreText(),
      ],
    );
  }
}
