import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/widgets/app_text_field.dart';
import 'package:pollo/features/products/presentation/manager/products_cubit.dart';
import 'package:pollo/features/products/presentation/views/widgets/products/products_filter_bottom_sheet.dart';

class ProductsSearchAndFilter extends StatelessWidget {
  const ProductsSearchAndFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ProductsCubit cubit = context.read<ProductsCubit>();
    return Row(
      spacing: 8.w,
      children: [
        Expanded(
          child: AppTextField(
            hintText: context.tr(LocaleKeys.searchHint),
            hintTextColor: AppColors.icon2,
            showTitle: false,
            useGradientBorders: false,
            isFilled: true,
            constraints: BoxConstraints(
              minHeight: 40.h,
              maxHeight: 40.h,
            ),
            borderRadius: 8.r,
          ),
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return BlocProvider.value(
                  value: cubit,
                  child: ProductsFilterBottomSheet(cubit: cubit),
                );
              },
              backgroundColor: AppColors.background,
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(8.r),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.all(4.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.r),
              border: Border.all(color: AppColors.border),
            ),
            child: SvgPicture.asset(
              AppSvgs.options,
              width: 24.r,
              height: 24.r,
            ),
          ),
        ),
      ],
    );
  }
}
