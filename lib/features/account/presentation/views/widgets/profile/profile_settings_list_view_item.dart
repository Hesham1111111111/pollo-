import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/widgets/rotate.dart';
import 'package:pollo/features/account/data/models/profile_setting_model.dart';

class ProfileSettingsListViewItem extends StatelessWidget {
  const ProfileSettingsListViewItem({
    super.key,
    required this.profileSetting,
  });

  final ProfileSettingModel profileSetting;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16.w,
      children: [
        Container(
          padding: EdgeInsets.all(6.r),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xffECECEC),
          ),
          child: SvgPicture.asset(
            profileSetting.svg,
            width: 24.r,
            height: 24.r,
          ),
        ),
        Text(
          profileSetting.title,
          style: TextStyles.style18SemiBold(color: AppColors.secondaryText),
        ),
        const Spacer(),
        Rotate(
          child: SvgPicture.asset(
            AppSvgs.arrowRight,
            width: 24.r,
            height: 24.r,
          ),
        ),
      ],
    );
  }
}
