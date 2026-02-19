import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/extensions.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/routing/routes.dart';
import 'package:pollo/features/account/data/models/profile_setting_model.dart';
import 'package:pollo/features/account/presentation/views/widgets/profile/profile_settings_list_view_item.dart';

class ProfileSettingsListView extends StatelessWidget {
  const ProfileSettingsListView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProfileSettingModel> profileSettings = [
      ProfileSettingModel(
        svg: AppSvgs.edit,
        title: context.tr(LocaleKeys.editProfile),
        onTap: () {},
      ),
      ProfileSettingModel(
        svg: AppSvgs.unlock,
        title: context.tr(LocaleKeys.changePassword),
        onTap: () {},
      ),
      ProfileSettingModel(
        svg: AppSvgs.settings,
        title: context.tr(LocaleKeys.settings),
        onTap: () {
          context.pushNamed(Routes.settings);
        },
      ),
      ProfileSettingModel(
        svg: AppSvgs.questionMark,
        title: context.tr(LocaleKeys.helpSupport),
        onTap: () {},
      ),
      ProfileSettingModel(
        svg: AppSvgs.logOut,
        title: context.tr(LocaleKeys.logOut),
        onTap: () {
          context.pushNamedAndRemoveUntil(
            Routes.onboarding,
            predicate: (route) => false,
          );
        },
      ),
    ];
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: profileSettings[index].onTap,
            borderRadius: BorderRadius.circular(40.r),
            child: ProfileSettingsListViewItem(
              profileSetting: profileSettings[index],
            ),
          );
        },
        separatorBuilder: (context, index) => Divider(
          height: 16.h,
          color: const Color(0xffD1D1D1),
          thickness: 0.7.h,
        ),
        itemCount: profileSettings.length,
      ),
    );
  }
}

