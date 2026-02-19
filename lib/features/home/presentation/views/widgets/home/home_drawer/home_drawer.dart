import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/features/home/presentation/views/widgets/home/home_drawer/home_drawer_settings.dart';
import 'package:pollo/features/home/presentation/views/widgets/home/home_drawer/home_header.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.background,
        ),
        child: Column(
          spacing: 24.h,
          children: const [
            HomeDrawerHeader(),
            Expanded(
              child: HomeDrawerSettings(),
            ),
          ],
        ),
      ),
    );
  }
}
