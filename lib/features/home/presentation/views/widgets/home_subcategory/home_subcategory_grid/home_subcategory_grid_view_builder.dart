import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/extensions.dart';
import 'package:pollo/features/home/presentation/views/widgets/home_subcategory/home_subcategory_grid/shimmer.dart';

import '../../../../../../../core/routing/routes.dart';
import '../../../../manager/home_cubit.dart';
import '../../../../manager/home_state.dart';
import 'home_category_grid_view_item.dart';

class HomeSubcategoryGridViewBuilder extends StatelessWidget {
  const HomeSubcategoryGridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return state.categoriesState.when(
          initial: () => const SizedBox(),
          loading: () {
            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(vertical: 16.h),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16.h,
                crossAxisSpacing: 16.w,
                childAspectRatio: 164 / 190,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return const HomeSubcategoryGridViewItemShimmer();
              },
            );
          },
          success: (categories) {
            return GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(vertical: 16.h),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16.h,
                crossAxisSpacing: 16.w,
                childAspectRatio: 164 / 190,
              ),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];

                return GestureDetector(
                  onTap: () {
                    context.pushNamed(Routes.products);
                  },
                  child: HomeSubcategoryGridViewItem(
                    category: category,
                  ),
                );
              },
            );
          },
          error: (message) {
            return Center(
              child: Text(message),
            );
          },
        );
      },
    );
  }
}
