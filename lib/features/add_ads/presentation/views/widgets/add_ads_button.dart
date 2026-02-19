import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/widgets/app_button.dart';

class AddAdsButton extends StatelessWidget {
  const AddAdsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      title: context.tr(LocaleKeys.add),
      onTap: () {},
    );
  }
}
