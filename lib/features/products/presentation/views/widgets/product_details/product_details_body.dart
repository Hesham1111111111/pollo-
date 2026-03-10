import 'package:flutter/material.dart';
import 'package:pollo/features/products/data/model/product/product_model.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_details/product_header/product_details_header.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_details/product_info/product_info.dart';

class ProductDetailsBody extends StatelessWidget {
  final Product product;
  final String heroTag;

  const ProductDetailsBody({
    super.key,
    required this.product,
    required this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        ProductDetailsHeader(
          product: product,
          heroTag: heroTag,
        ),
        SliverToBoxAdapter(
          child: ProductInfo(
            product: product,
          ),
        ),
      ],
    );
  }
}