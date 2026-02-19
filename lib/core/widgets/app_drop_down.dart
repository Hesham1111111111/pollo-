import 'dart:math';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:pollo/core/helpers/app_functions.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';

class AppDropdownButton<T> extends StatelessWidget {
  const AppDropdownButton({
    super.key,
    required this.title,
    required this.hintText,
    required this.items,
    required this.value,
    required this.onChanged,
    this.itemBuilder,
    this.selectedItemBuilder,
    this.validator,
    this.autoValidateMode = AutovalidateMode.onUnfocus,
    this.titleStyle,
  });

  /// Data
  final List<T> items;
  final T? value;
  final ValueChanged<T?> onChanged;
  final String hintText;

  /// Optional custom builders
  final Widget Function(BuildContext, T)? itemBuilder;
  final Widget Function(BuildContext, T)? selectedItemBuilder;

  /// Validation
  final FormFieldValidator<T>? validator;
  final AutovalidateMode autoValidateMode;
  final String title;
  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: titleStyle ?? TextStyles.style16Medium(),
        ),
        8.verticalSpace,
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            border: GradientBoxBorder(gradient: AppColors.appGradient, width: 1.5.w),
          ),
          padding: EdgeInsets.zero,
          child: DropdownButtonFormField2<T>(
            value: value,
            hint: Text(
              hintText,
              style: TextStyles.style16Medium(color: AppColors.secondaryText),
            ),
            validator: validator,
            autovalidateMode: autoValidateMode,

            /// Items
            items: _buildDropdownItems(context),

            /// Selected item builder
            selectedItemBuilder: selectedItemBuilder != null
                ? (context) => items.map((item) => selectedItemBuilder!(context, item)).toList()
                : (context) => items.map((item) => _defaultSelectedItemBuilder(context, item)).toList(),

            onChanged: onChanged,
            decoration: _inputDecorationWithoutBorder(context),
            dropdownStyleData: _dropdownStyle(),
            iconStyleData: _iconStyle(),
          ),
        ),
      ],
    );
  }

  /// -------------------------
  /// Methods for building items
  /// -------------------------

  List<DropdownMenuItem<T>> _buildDropdownItems(BuildContext context) {
    return items
        .map(
          (item) => DropdownMenuItem<T>(
            value: item,
            child: Align(
              alignment: Alignment.centerLeft,
              child: itemBuilder != null ? itemBuilder!(context, item) : _defaultItemBuilder(context, item, value),
            ),
          ),
        )
        .toList();
  }

  /// Default dropdown item appearance
  Widget _defaultItemBuilder(BuildContext context, T item, T? selectedValue) {
    final bool isSelected = item == selectedValue;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          item.toString(),
          style: TextStyles.style16Medium(color: AppColors.secondaryText),
        ),
        if (isSelected)
          SvgPicture.asset(
            AppSvgs.checkmark,
            width: 20.w,
            height: 20.h,
          )
      ],
    );
  }

  /// Default selected item appearance
  Widget _defaultSelectedItemBuilder(BuildContext context, T item) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        item.toString(),
        style: TextStyles.style16Regular(),
      ),
    );
  }

  /// -------------------------
  /// Decoration and styles
  /// -------------------------

  InputDecoration _inputDecorationWithoutBorder(BuildContext context) {
    final bool isEnglish = AppFunctions.isEnglish(context);
    return InputDecoration(
      contentPadding: EdgeInsets.only(
        right: isEnglish ? 8.w : 0,
        left: isEnglish ? 0 : 8.w,
      ),
      border: InputBorder.none,
    );
  }

  DropdownStyleData _dropdownStyle() {
    return DropdownStyleData(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      elevation: 8,
      isOverButton: false,
      offset: Offset(0, -8.h),
      maxHeight: 350.h,
      scrollbarTheme: ScrollbarThemeData(
        thickness: WidgetStateProperty.all(4.w),
        thumbColor: WidgetStateProperty.all(AppColors.primary),
        radius: Radius.circular(8.r),
      ),
    );
  }

  IconStyleData _iconStyle() {
    return IconStyleData(
      icon: SvgPicture.asset(
        AppSvgs.arrowDown,
        width: 24.w,
        height: 24.h,
      ),
      openMenuIcon: Transform.rotate(
        angle: pi,
        child: SvgPicture.asset(
          AppSvgs.arrowDown,
          width: 24.w,
          height: 24.h,
        ),
      ),
      iconSize: 24.w,
    );
  }
}
