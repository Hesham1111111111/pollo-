import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pollo/core/helpers/extensions.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/widgets/animation_wrapper/animation_wrapper.dart';
import 'package:pollo/features/products/presentation/views/widgets/product_details/product_header/product_details_header_background.dart';

class ProductDetailsHeader extends StatelessWidget {
  const ProductDetailsHeader({super.key});

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
      actions: [
        AnimationWrapper(
          child: SvgPicture.asset(
            AppSvgs.heartOutlined,
            width: 24.w,
            height: 24.h,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
        16.horizontalSpace,
        AnimationWrapper(
          child: SvgPicture.asset(
            AppSvgs.share,
            width: 24.w,
            height: 24.h,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          ),
        ),
      ],
      actionsPadding: EdgeInsets.symmetric(horizontal: 16.w),
      flexibleSpace: const ProductDetailsHeaderBackground(),
    );
  }
}
