import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/extensions.dart';
import 'package:pollo/core/routing/routes.dart';
import 'package:pollo/features/products/presentation/views/widgets/products/products_list_view_item.dart';

class ProductsListView extends StatelessWidget {
  const ProductsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        itemBuilder: (context, index) {
          final String heroTag = 'product_hero_$index';
          return GestureDetector(
            onTap: () {
              context.pushNamed(
                Routes.productsDetails,
                arguments: heroTag,
              );
            },
            child: ProductsListViewItem(
              heroTag: heroTag,
            ),
          );
        },
        separatorBuilder: (context, index) => 16.verticalSpace,
        itemCount: 5,
      ),
    );
  }
}
