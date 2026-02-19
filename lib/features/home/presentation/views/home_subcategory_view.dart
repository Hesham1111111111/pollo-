import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/di/service_locator.dart';
import 'package:pollo/core/widgets/custom_app_bar.dart';
import 'package:pollo/features/home/presentation/manager/home_cubit.dart';
import 'package:pollo/features/home/presentation/views/widgets/home_subcategory/home_subcategory_body.dart';

class HomeSubcategoryView extends StatelessWidget {
  const HomeSubcategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<HomeCubit>(),
      child: Scaffold(
        appBar: const CustomAppBar(title: 'Veterinarians'),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: const HomeSubcategoryBody(),
        ),
      ),
    );
  }
}
