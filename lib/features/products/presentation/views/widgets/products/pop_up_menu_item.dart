import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/styles.dart';

class PopUpMenuItem extends StatelessWidget {
  const PopUpMenuItem({super.key, required this.value, required this.isSelected});

  final String value;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          value,
          style: TextStyles.style12Medium(),
        ),
        if (isSelected)
          SvgPicture.asset(
            AppSvgs.checkmark,
            width: 16.w,
            height: 16.h,
          ),
      ],
    );
  }
}
