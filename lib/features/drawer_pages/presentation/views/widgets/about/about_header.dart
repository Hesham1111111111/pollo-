import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/extensions.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/widgets/animation_wrapper/animation_wrapper.dart';
import 'package:pollo/features/drawer_pages/presentation/views/widgets/about/about_header_background.dart';

class AboutHeader extends StatelessWidget {
  const AboutHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      expandedHeight: 312.h,
      pinned: true,
      floating: false,
      snap: false,
      collapsedHeight: 160.h,
      toolbarHeight: 56.h,
      title: AnimationWrapper(
        child: Text(
          context.tr(LocaleKeys.about),
          style: TextStyles.style22SemiBold(color: Colors.white),
        ),
      ),
      centerTitle: true,
      leading: AnimationWrapper(
        child: GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 20.sp,
            color: Colors.white,
          ),
        ),
      ),
      actionsPadding: EdgeInsets.symmetric(horizontal: 16.w),
      flexibleSpace: const AboutDetailsHeaderBackground(),
    );
  }
}
