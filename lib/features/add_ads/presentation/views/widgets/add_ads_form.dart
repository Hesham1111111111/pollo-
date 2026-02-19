import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/app_functions.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/widgets/app_drop_down.dart';
import 'package:pollo/core/widgets/app_text_field.dart';
import 'package:pollo/features/add_ads/presentation/views/widgets/negotiable_check_box.dart';

class AddAdsForm extends StatelessWidget {
  const AddAdsForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        spacing: 16.h,
        children: [
          AppDropdownButton<String>(
            title: context.tr(LocaleKeys.category),
            hintText: context.tr(LocaleKeys.choose),
            items: const [
              'Category 1',
              'Category 2',
              'Category 3',
              'Category 4',
              'Category 5',
              'Category 6',
            ],
            value: null,
            onChanged: (value) {},
            titleStyle: TextStyles.style18SemiBold(),
          ),
          AppDropdownButton<String>(
            title: context.tr(LocaleKeys.subcategory),
            hintText: context.tr(LocaleKeys.choose),
            items: const [
              'Subcategory 1',
              'Subcategory 2',
              'Subcategory 3',
              'Subcategory 4',
              'Subcategory 5',
              'Subcategory 6',
            ],
            value: null,
            onChanged: (value) {},
            titleStyle: TextStyles.style18SemiBold(),
          ),
          AppTextField(
            title: context.tr(LocaleKeys.adTitle),
            hintText: context.tr(LocaleKeys.enterTitle),
            titleStyle: TextStyles.style18SemiBold(),
          ),
          Column(
            spacing: 8.h,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextField(
                title: context.tr(LocaleKeys.price),
                titleStyle: TextStyles.style18SemiBold(),
                hintText: context.tr(LocaleKeys.enterPrice),
                keyboardType: TextInputType.number,
                prefixIcon: Container(
                  width: 60.w,
                  decoration: BoxDecoration(
                    border: Border(
                      right: AppFunctions.isEnglish(context)
                          ? BorderSide(
                              color: AppColors.primary,
                              width: 2.w,
                            )
                          : BorderSide.none,
                      left: !AppFunctions.isEnglish(context)
                          ? BorderSide(
                              color: AppColors.primary,
                              width: 2.w,
                            )
                          : BorderSide.none,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'EGP',
                      style: TextStyles.style16SemiBold(),
                    ),
                  ),
                ),
              ),
              const NegotiableCheckBox(),
            ],
          ),
          AppTextField(
            title: context.tr(LocaleKeys.details),
            hintText: context.tr(LocaleKeys.describeItem),
            titleStyle: TextStyles.style18SemiBold(),
            maxLines: 6,
          ),
          AppDropdownButton<String>(
            title: context.tr(LocaleKeys.location),
            hintText: context.tr(LocaleKeys.chooseLocation),
            items: const [
              'Location 1',
              'Location 2',
              'Location 3',
              'Location 4',
              'Location 5',
              'Location 6',
            ],
            value: null,
            onChanged: (value) {},
            titleStyle: TextStyles.style18SemiBold(),
          ),
        ],
      ),
    );
  }
}
