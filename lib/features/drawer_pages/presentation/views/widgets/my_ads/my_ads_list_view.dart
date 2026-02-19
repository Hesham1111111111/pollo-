import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/features/drawer_pages/presentation/views/widgets/my_ads/my_ads_list_view_item.dart';

class MyAdsListView extends StatelessWidget {
  const MyAdsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      itemBuilder: (context, index) {
        return const MyAdsListViewItem();
      },
      separatorBuilder: (context, index) => 16.verticalSpace,
      itemCount: 5,
    );
  }
}
