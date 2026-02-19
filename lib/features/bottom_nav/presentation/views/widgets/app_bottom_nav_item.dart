import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/features/bottom_nav/presentation/manager/bottom_nav_cubit.dart';

class AppBottomNavBar extends StatelessWidget {
  const AppBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavCubit cubit = context.watch<BottomNavCubit>();
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: cubit.appNavIndex,
      onTap: cubit.changeNavIndex,
      backgroundColor: AppColors.background,
      selectedLabelStyle: TextStyles.style12Regular(),
      unselectedLabelStyle: TextStyles.style12Regular(),
      elevation: 8,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppSvgs.home),
          activeIcon: SvgPicture.asset(AppSvgs.homeActive),
          label: context.tr(LocaleKeys.home),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppSvgs.heart),
          activeIcon: SvgPicture.asset(AppSvgs.heartActive),
          label: context.tr(LocaleKeys.favorite),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppSvgs.plusSquare),
          activeIcon: SvgPicture.asset(AppSvgs.plusSquareActive),
          label: context.tr(LocaleKeys.addAds),
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(AppSvgs.personNav),
          activeIcon: SvgPicture.asset(AppSvgs.personActive),
          label: context.tr(LocaleKeys.account),
        ),
      ],
    );
  }
}
