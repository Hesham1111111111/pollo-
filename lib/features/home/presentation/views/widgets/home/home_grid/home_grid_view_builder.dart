import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/extensions.dart';
import 'package:pollo/core/routing/routes.dart';
import 'package:pollo/features/home/presentation/manager/home_cubit.dart';
import 'package:pollo/features/home/presentation/manager/home_state.dart';
import 'package:pollo/features/home/presentation/views/widgets/home/home_grid/home_grid_shimmer.dart';
import 'package:pollo/features/home/presentation/views/widgets/home/home_grid/home_grid_view_item.dart';

class HomeGridViewBuilder extends StatelessWidget {
  const HomeGridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.categoriesState.when(
          initial: () => const SizedBox(),
          loading: () => Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 16.h,
                crossAxisSpacing: 16.w,
                childAspectRatio: 104 / 95,
              ),
              itemCount: 20,
              itemBuilder: (context, index) => const HomeGridViewItemShimmer(),
            ),
          ),
          success: (categories) => Expanded(
            child: GridView.builder(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 16.h,
                crossAxisSpacing: 16.w,
                childAspectRatio: 104 / 95,
              ),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return GestureDetector(
                  onTap: () {
                    context.pushNamed(Routes.homeSubcategory);
                  },
                  child: HomeGridViewItem(category: category),
                );
              },
            ),
          ),
          error: (error) => Center(child: Text(error)),
        );
      },
    );
  }
}