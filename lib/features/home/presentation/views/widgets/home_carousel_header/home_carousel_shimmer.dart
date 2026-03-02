import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class HomeCarouselItemShimmer extends StatelessWidget {
  const HomeCarouselItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(height: 16.h, width: 80.w, color: Colors.white, margin: EdgeInsets.only(bottom: 8.h)),
                  Container(height: 24.h, width: 120.w, color: Colors.white, margin: EdgeInsets.only(bottom: 8.h)),
                  Container(height: 16.h, width: 100.w, color: Colors.white),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Container(
                height: 120.h,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}