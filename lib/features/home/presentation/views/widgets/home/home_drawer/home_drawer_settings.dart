import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/extensions.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/routing/routes.dart';
import 'package:pollo/features/home/presentation/views/widgets/home/home_drawer/home_drawer_setting_item.dart';

class HomeDrawerSettings extends StatelessWidget {
  const HomeDrawerSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Column(
        spacing: 12.w,
        children: [
          HomeDrawerSettingItem(
            svg: AppSvgs.inbox,
            title: context.tr(LocaleKeys.myAds),
            onTap: () {
              context.pushNamed(Routes.myAds);
            },
          ),
          HomeDrawerSettingItem(
            svg: AppSvgs.phoneColored,
            title: context.tr(LocaleKeys.contactUs),
            onTap: () {
              context.pushNamed(Routes.contactUs);
            },
          ),
          HomeDrawerSettingItem(
            svg: AppSvgs.pricetag,
            title: context.tr(LocaleKeys.about),
            onTap: () {
              context.pushNamed(Routes.about);
            },
          ),
          HomeDrawerSettingItem(
            svg: AppSvgs.fluentChat,
            title: context.tr(LocaleKeys.blog),
            onTap: () {},
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 40.h),
            child: HomeDrawerSettingItem(
              svg: AppSvgs.logOut,
              title: context.tr(LocaleKeys.logout),
              onTap: () async {
                await context.pushNamedAndRemoveUntil(
                  Routes.onboarding,
                  predicate: (route) => false,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
