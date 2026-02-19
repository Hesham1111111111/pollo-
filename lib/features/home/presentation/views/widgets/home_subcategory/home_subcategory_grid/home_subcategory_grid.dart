import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/features/home/presentation/views/widgets/home_subcategory/home_subcategory_grid/home_subcategory_grid_view_builder.dart';

class HomeSubCategoryGrid extends StatelessWidget {
  const HomeSubCategoryGrid({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            context.tr(LocaleKeys.available),
            style: TextStyles.style20SemiBold(),
          ),
          const HomeSubcategoryGridViewBuilder(),
        ],
      ),
    );
  }
}

