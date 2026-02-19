import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';

class NegotiableCheckBox extends StatelessWidget {
  const NegotiableCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.w,
      children: [
        Container(
          width: 20.r,
          height: 20.r,
          decoration: BoxDecoration(
            border: GradientBoxBorder(gradient: AppColors.appGradient, width: 1.5.w),
            borderRadius: BorderRadius.all(
              Radius.circular(3.r),
            ),
          ),
          child: Checkbox(
            value: false,
            onChanged: (value) {},
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
            checkColor: AppColors.primary,
            fillColor: const WidgetStatePropertyAll(Colors.transparent),
            side: BorderSide.none,
          ),
        ),
        Text(
          context.tr(LocaleKeys.negotiable),
          style: TextStyles.style14Medium(),
        ),
      ],
    );
  }
}
