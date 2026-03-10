import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/extensions.dart';
import 'package:pollo/core/routing/routes.dart';
import 'package:pollo/features/products/presentation/views/widgets/products/products_list_view_item.dart';

import '../../../../data/model/product/product_model.dart';

class ProductsListView extends StatelessWidget {
  final List<Product> products;

  const ProductsListView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        itemBuilder: (context, index) {
          final String heroTag = 'product_hero_$index';
          final product = products[index];
          return GestureDetector(
            onTap: () {
              context.pushNamed(
                Routes.productsDetails,
                arguments: {
                  "product": product,
                  "heroTag": heroTag,
                },
              );
            },
            child: ProductsListViewItem(
              heroTag: heroTag,
              product: product,
            ),
          );
        },
        separatorBuilder: (context, index) => 16.verticalSpace,
        itemCount: products.length,
      ),
    );
  }
}