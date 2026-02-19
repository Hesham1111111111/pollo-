import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';

class AppSearchAnchor extends StatelessWidget {
  const AppSearchAnchor({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      'White Cat',
      'White Cat',
      'White Cat',
      'White Cat',
      'White Cat',
      'White Cat',
    ];

    return Column(
      children: [
        SearchAnchor.bar(
          barHintText: context.tr(LocaleKeys.searchHint),
          barHintStyle: WidgetStatePropertyAll(
            TextStyles.style16Medium(color: AppColors.icon2),
          ),
          barBackgroundColor: const WidgetStatePropertyAll(AppColors.fieldFillColor),
          barElevation: const WidgetStatePropertyAll(0),
          barLeading: SvgPicture.asset(
            AppSvgs.search,
            width: 20.w,
            height: 20.h,
          ),
          barPadding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 16.w),
          ),
          barShape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
          constraints: BoxConstraints(
            minHeight: 46.h,
            maxHeight: 46.h,
          ),
          viewBackgroundColor: AppColors.background,
          suggestionsBuilder: (BuildContext context, SearchController controller) {
            final String query = controller.text.toLowerCase();

            final List<String> results = items.where((item) => item.toLowerCase().contains(query)).toList();

            if (results.isEmpty) {
              return [
                const ListTile(
                  title: Text('No results found'),
                )
              ];
            }

            return results.map(
                  (item) => ListTile(
                title: Text(item),
                onTap: () => controller.closeView(item),
              ),
            );
          },
        ),
      ],
    );
  }
}
