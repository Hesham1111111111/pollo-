import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/features/products/presentation/manager/products_cubit.dart';
import 'package:pollo/features/products/presentation/manager/products_state.dart';
import 'package:pollo/features/products/presentation/views/widgets/products/products_list_view.dart';
import 'package:pollo/features/products/presentation/views/widgets/products/products_search_and_filter.dart';
import 'package:pollo/features/products/presentation/views/widgets/products/search_results_count_and_sort_by.dart';
import 'package:pollo/features/products/presentation/views/widgets/products/view_all.dart';

class ProductsBody extends StatelessWidget {
  const ProductsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        8.verticalSpace,
        const ProductsSearchAndFilter(),
        8.verticalSpace,
        const SearchResultsCountAndSortBy(),
        4.verticalSpace,
        Divider(
          height: 0,
          color: AppColors.border,
          thickness: 0.5.h,
        ),
        16.verticalSpace,
        const ViewAll(),
        BlocBuilder<ProductsCubit, ProductsState>(builder: (context, state) {
          return state.productState.when(
            initial: () => const SizedBox(),
            loading: () => const Center(child: CircularProgressIndicator()),
            success: (products) =>  ProductsListView(
              products: products,
            ),
            error: (error) => Center(child: Text(error)),
          );
        })
      ],
    );
  }
}
