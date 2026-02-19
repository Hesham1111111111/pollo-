import 'package:easy_localization/easy_localization.dart' as ez;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/features/products/presentation/manager/products_cubit.dart';
import 'package:pollo/features/products/presentation/views/widgets/products/sort_by_pop_up_menu.dart';

class SearchResultsCountAndSortBy extends StatelessWidget {
  const SearchResultsCountAndSortBy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ProductsCubit cubit = context.read<ProductsCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${context.tr(LocaleKeys.showingResults)} ',
                style: TextStyles.style14Medium(color: AppColors.secondaryText),
              ),
              TextSpan(
                text: context.tr(
                  LocaleKeys.resultsFor,
                  namedArgs: {
                    'count': '24',
                    'name': 'Cats',
                  },
                ),
                style: TextStyles.style14Medium(),
              ),
            ],
          ),
        ),
        BlocBuilder<ProductsCubit, ProductsState>(
          buildWhen: (previous, current) => current is SortByUpdated,
          builder: (context, state) {
            return SortByPopUpMenu(
              options: [
                context.tr(LocaleKeys.sortRecent),
                context.tr(LocaleKeys.sortLowPrice),
                context.tr(LocaleKeys.sortNearest),
                context.tr(LocaleKeys.sortHighPrice),
              ],
              selectedValue: cubit.sortBy,
              onSelected: (value) {
                cubit.updateSortBy(value);
              },
            );
          },
        ),
      ],
    );
  }
}
