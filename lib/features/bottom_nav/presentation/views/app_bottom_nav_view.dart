import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/core/di/service_locator.dart';
import 'package:pollo/core/widgets/animation_wrapper/animation_wrapper.dart';
import 'package:pollo/features/account/presentation/views/account_view.dart';
import 'package:pollo/features/add_ads/presentation/views/add_ads_view.dart';
import 'package:pollo/features/bottom_nav/presentation/manager/bottom_nav_cubit.dart';
import 'package:pollo/features/bottom_nav/presentation/views/widgets/app_bottom_nav_item.dart';
import 'package:pollo/features/favorite/presentation/views/favorite_view.dart';
import 'package:pollo/features/home/presentation/views/home_view.dart';
import 'package:pollo/features/home/presentation/views/widgets/home/home_drawer/home_drawer.dart';

class AppBottomNavBarView extends StatelessWidget {
  const AppBottomNavBarView({super.key});

  @override
  Widget build(BuildContext context) {
    const List<Widget> pages = [
      HomeView(),
      FavoriteView(),
      AddAdsView(),
      AccountView(),
    ];
    return BlocProvider(
      create: (context) => getIt.get<BottomNavCubit>(),
      child: Scaffold(
        endDrawer: const HomeDrawer(),
        body: BlocBuilder<BottomNavCubit, BottomNavState>(
          buildWhen: (previous, current) => current is AppNavIndexChanged,
          builder: (context, state) {
            final BottomNavCubit cubit = context.read<BottomNavCubit>();
            return IndexedStack(
              index: cubit.appNavIndex,
              children: pages,
            );
          },
        ),
        bottomNavigationBar: const AnimationWrapper(
          child: AppBottomNavBar(),
        ),
      ),
    );
  }
}
