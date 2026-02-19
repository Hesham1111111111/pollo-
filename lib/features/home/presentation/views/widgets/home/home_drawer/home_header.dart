import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';

class HomeDrawerHeader extends StatelessWidget {
  const HomeDrawerHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.primary2.withAlpha(64),
            AppColors.primary.withAlpha(64),
          ],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 64.w),
        child: Image.asset(
          AppImages.splashLogo,
        ),
      ),
    );
  }
}
