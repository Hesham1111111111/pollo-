import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/core/di/service_locator.dart';
import 'package:pollo/features/products/presentation/manager/products_cubit.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_details/product_details_body.dart';
import '../../data/model/product/product_model.dart';

class ProductsDetailsView extends StatelessWidget {
  final Product product;
  final String heroTag;

  const ProductsDetailsView({
    super.key,
    required this.product,
    required this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ProductsCubit>(),
      child: Scaffold(
        body: ProductDetailsBody(
          product: product,
          heroTag: heroTag,
        ),
      ),
    );
  }
}