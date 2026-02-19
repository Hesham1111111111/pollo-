import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_details/product_info/product_info_description.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_details/product_info/product_info_details.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_details/product_info/product_info_location.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_details/product_info/product_info_owner.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.w),
      child: Column(
        children: [
          const ProductInfoDescription(),
          24.verticalSpace,
          const ProductInfoDetails(),
          24.verticalSpace,
          const ProductInfoOwner(),
          24.verticalSpace,
          const ProductInfoLocation(),
          24.verticalSpace,
        ],
      ),
    );
  }
}
