import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/di/service_locator.dart';
import 'package:pollo/core/widgets/custom_app_bar.dart';
import 'package:pollo/features/products/presentation/manager/products_cubit.dart';
import 'package:pollo/features/products/presentation/views/widgets/products/products_body.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<ProductsCubit>(),
      child: Scaffold(
        appBar: const CustomAppBar(title: 'Pet Animals'),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: const ProductsBody(),
        ),
      ),
    );
  }
}
