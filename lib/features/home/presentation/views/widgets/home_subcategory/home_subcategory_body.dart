import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/features/home/presentation/views/widgets/home_carousel_header/home_carousel_header.dart';
import 'package:pollo/features/home/presentation/views/widgets/home_subcategory/home_subcategory_grid/home_subcategory_grid.dart';

class HomeSubcategoryBody extends StatelessWidget {
  const HomeSubcategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        16.verticalSpace,
        const HomeCarouselHeader(),
        24.verticalSpace,
        const HomeSubCategoryGrid(),
      ],
    );
  }
}
