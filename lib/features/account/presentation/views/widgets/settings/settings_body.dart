import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/widgets/app_drop_down.dart';
import 'package:pollo/features/account/presentation/views/widgets/settings/language_drop_down.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        spacing: 24.h,
        children: [
          AppDropdownButton<String>(
            title: context.tr(LocaleKeys.country),
            hintText: context.tr(LocaleKeys.country),
            items: const [
              'Egypt',
              'Saudi Arabia',
              'Country 1',
              'Country 2',
              'Country 3',
              'Country 4',
              'Country 5',
            ],
            value: 'Egypt',
            onChanged: (lang) {},
          ),
          const LanguageDropDown(),
        ],
      ),
    );
  }
}
