import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/widgets/custom_app_bar.dart';
import 'package:pollo/features/drawer_pages/presentation/views/widgets/my_ads/my_ads_list_view.dart';

class MyAdsView extends StatelessWidget {
  const MyAdsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: context.tr(LocaleKeys.myAds),
      ),
      body: const MyAdsListView(),
    );
  }
}
