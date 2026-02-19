import 'package:flutter/material.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_details/product_header/product_details_header.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_details/product_info/product_info.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        ProductDetailsHeader(),
        SliverToBoxAdapter(
          child: ProductInfo(),
        ),
      ],
    );
  }
}

