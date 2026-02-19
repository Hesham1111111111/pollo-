import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/widgets/custom_app_bar.dart';
import 'package:pollo/features/drawer_pages/presentation/views/widgets/contact_us/contact_us_grid_view.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: context.tr(LocaleKeys.contactUs),
      ),
      body: const ContactUsGridView(),
    );
  }
}
