import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/extensions.dart';
import 'package:pollo/core/routing/routes.dart';
import 'package:pollo/features/home/presentation/views/widgets/home_subcategory/home_subcategory_grid/home_category_grid_view_item.dart';

class HomeSubcategoryGridViewBuilder extends StatelessWidget {
  const HomeSubcategoryGridViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 16.h,
          crossAxisSpacing: 16.w,
          childAspectRatio: 164 / 190,
        ),
        itemCount: 11,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              context.pushNamed(Routes.products);
            },
            child: const HomeSubcategoryGridViewItem(),
          );
        },
      ),
    );
  }
}
