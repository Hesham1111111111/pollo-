import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pollo/core/resources/styles.dart';

class HomeDrawerSettingItem extends StatelessWidget {
  const HomeDrawerSettingItem({
    super.key,
    required this.svg,
    required this.title,
    this.onTap,
  });

  final String svg;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10.r),
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
            child: Row(
              spacing: 16.w,
              children: [
                SvgPicture.asset(
                  svg,
                  width: 24.r,
                  height: 24.r,
                ),
                Text(
                  title,
                  style: TextStyles.style18Medium(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
