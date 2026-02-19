import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/widgets/app_drop_down.dart';
import 'package:pollo/features/account/data/models/app_language_model.dart';

class LanguageDropDown extends StatelessWidget {
  const LanguageDropDown({super.key});

  @override
  Widget build(BuildContext context) {
    final List<AppLanguageModel> appLangList = [
      AppLanguageModel(langCode: 'en', langName: 'English'),
      AppLanguageModel(langCode: 'ar', langName: 'العربية'),
    ];
    final String currentLangCode = context.locale.languageCode;
    final AppLanguageModel selectedModel = appLangList.firstWhere(
      (lang) => lang.langCode == currentLangCode,
      orElse: () => appLangList.first,
    );
    return AppDropdownButton<AppLanguageModel>(
      title: context.tr(LocaleKeys.language),
      hintText: context.tr(LocaleKeys.language),
      items: appLangList,
      value: selectedModel,
      onChanged: (lang) {
        if (lang == null || lang.langCode == currentLangCode) return;
        context.setLocale(Locale(lang.langCode));
      },
    );
  }
}
