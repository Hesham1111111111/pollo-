import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/features/home/presentation/views/widgets/home/home_grid/home_grid.dart';
import 'package:pollo/features/home/presentation/views/widgets/home_carousel_header/home_carousel_header.dart';
import 'package:pollo/features/home/presentation/views/widgets/home/home_header.dart';
import 'package:pollo/core/widgets/static_search_field.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24.h,
      children: [
        const HomeHeader(),
        const StaticSearchField(),
        const HomeCarouselHeader(),
        HomeGrid(
          title: context.tr(LocaleKeys.categories),
        ),
      ],
    );
  }
}
