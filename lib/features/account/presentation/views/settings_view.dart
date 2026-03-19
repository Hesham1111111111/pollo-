import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/core/di/service_locator.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/widgets/custom_app_bar.dart';
import 'package:pollo/features/account/presentation/views/widgets/settings/settings_body.dart';

import '../manager/account_cubit.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: context.tr(LocaleKeys.settings),
        ),
        body: const SettingsBody(),
      );

  }
}
