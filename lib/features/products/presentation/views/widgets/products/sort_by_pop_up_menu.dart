import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pollo/core/helpers/app_functions.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'pop_up_menu_item.dart';

class SortByPopUpMenu extends StatelessWidget {
  const SortByPopUpMenu({
    super.key,
    required this.options,
    required this.selectedValue,
    required this.onSelected,
  });

  final List<String> options;
  final String? selectedValue;
  final ValueChanged<String> onSelected;

  void _showPopupMenu(BuildContext context, Offset position) async {
    final bool isRtl = AppFunctions.isArabic(context);

    final selected = await showMenu<String>(
      context: context,
      position: isRtl
          ? RelativeRect.fromLTRB(
              0,
              position.dy + 16.h,
              position.dx,
              position.dy,
            )
          : RelativeRect.fromLTRB(
              position.dx,
              position.dy + 16.h,
              position.dx,
              position.dy,
            ),
      color: AppColors.background,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
      elevation: 8,
      items: options.map(
        (option) {
          return PopupMenuItem<String>(
            value: option,
            height: 0,
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            child: PopUpMenuItem(
              value: option,
              isSelected: option == selectedValue,
            ),
          );
        },
      ).toList(),
    );

    if (selected != null) {
      onSelected(selected);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (details) => _showPopupMenu(context, details.globalPosition),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: AppColors.border, width: 0.5.w),
        ),
        child: Row(
          spacing: 4.w,
          children: [
            Text(
              selectedValue ?? context.tr(LocaleKeys.sortBy),
              style: TextStyles.style12Medium(),
            ),
            SvgPicture.asset(
              AppSvgs.arrowDown,
              width: 16.w,
              height: 16.h,
            ),
          ],
        ),
      ),
    );
  }
}
