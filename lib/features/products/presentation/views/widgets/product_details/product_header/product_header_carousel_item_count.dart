import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/widgets/animation_wrapper/animation_wrapper.dart';
import 'package:pollo/features/products/presentation/manager/products_cubit.dart';

class ProductHeaderCarouselItemCount extends StatelessWidget {
  const ProductHeaderCarouselItemCount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ProductsCubit cubit = context.read<ProductsCubit>();
    return AnimationWrapper(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 4.h),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadiusGeometry.circular(6.r),
        ),
        child: Row(
          spacing: 4.w,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              AppSvgs.camera,
              width: 16.w,
              height: 16.h,
            ),
            BlocBuilder<ProductsCubit, ProductsState>(
              buildWhen: (previous, current) => current is CarouselIndexChanged,
              builder: (context, state) {
                return Text(
                  '${cubit.activeIndex + 1} / 4',
                  style: TextStyles.style12Bold(color: Colors.white),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
