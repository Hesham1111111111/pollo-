import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/features/favorite/presentation/views/widgets/favorite_list_view_item.dart';

class FavoriteListView extends StatelessWidget {
  const FavoriteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
        itemBuilder: (context, index) {
          return const FavoriteListViewItem();
        },
        separatorBuilder: (context, index) => 16.verticalSpace,
        itemCount: 5,
      ),
    );
  }
}
