import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/extensions.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/widgets/app_button.dart';
import 'package:pollo/core/widgets/app_drop_down.dart';
import 'package:pollo/features/products/presentation/manager/products_cubit.dart';

class ProductsFilterBottomSheet extends StatelessWidget {
  const ProductsFilterBottomSheet({
    super.key,
    required this.cubit,
  });

  final ProductsCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            context.tr(LocaleKeys.filter),
            style: TextStyles.style22SemiBold(),
          ),
          24.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.tr(LocaleKeys.priceRange),
                style: TextStyles.style16Medium(),
              ),
              BlocBuilder<ProductsCubit, ProductsState>(
                buildWhen: (previous, current) => current is PriceRangeUpdated,
                builder: (context, state) {
                  final RangeValues rangeValues = cubit.selectedPriceRange;
                  return Text(
                    '${rangeValues.start.toInt()} EGP - ${rangeValues.end.toInt()} EGP',
                    style: TextStyles.style14Medium(color: AppColors.secondaryText),
                  );
                },
              ),
            ],
          ),
          16.verticalSpace,
          BlocBuilder<ProductsCubit, ProductsState>(
            buildWhen: (previous, current) => current is PriceRangeUpdated,
            builder: (context, state) {
              final RangeValues rangeValues = cubit.selectedPriceRange;
              return RangeSlider(
                values: rangeValues,
                min: cubit.minPrice,
                max: cubit.maxPrice,
                divisions: 100,
                activeColor: AppColors.primary,
                inactiveColor: const Color(0xffECECEC),
                onChanged: (RangeValues values) {
                  cubit.updatePriceRange(values);
                },
              );
            },
          ),
          24.verticalSpace,
          AppDropdownButton<String>(
            title: context.tr(LocaleKeys.location),
            hintText: context.tr(LocaleKeys.choose),
            items: const [
              'Cairo',
              'Alexandria',
              'Sharqia',
            ],
            value: null,
            onChanged: (value) {},
          ),
          24.verticalSpace,
          AppButton(
            title: context.tr(LocaleKeys.search),
            onTap: () {
              context.pop();
            },
          ),
        ],
      ),
    );
  }
}
