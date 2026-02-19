import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/colors.dart';
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
        const ProductsListView(),
      ],
    );
  }
}
