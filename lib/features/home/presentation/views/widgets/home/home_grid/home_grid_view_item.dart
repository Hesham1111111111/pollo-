import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';

import '../../../../../data/model/category_top_level_model/categorys_model.dart';

class HomeGridViewItem extends StatelessWidget {
  const HomeGridViewItem({
    super.key,
    required this.category,
  });

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 16.h),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: AppColors.border),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Image.network(
              category.image,
              fit: BoxFit.fill,
            ),
          ),

          Text(
            category.type??'',
            style: TextStyles.style12Medium(),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
