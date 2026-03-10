import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_details/product_info/product_info_description.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_details/product_info/product_info_details.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_details/product_info/product_info_location.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_details/product_info/product_info_owner.dart';

import '../../../../../data/model/product/product_model.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
      child: Column(
        children: [
           ProductInfoDescription(product:product ,),
          24.verticalSpace,
           ProductInfoDetails(product: product,),
          24.verticalSpace,
           ProductInfoOwner(product: product,),
          24.verticalSpace,
           ProductInfoLocation(product: product,),
          24.verticalSpace,
        ],
      ),
    );
  }
}
