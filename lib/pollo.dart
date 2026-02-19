import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/di/service_locator.dart';
import 'package:pollo/core/helpers/cubits/app_cubit/app_cubit.dart';
import 'package:pollo/core/resources/theme.dart';
import 'package:pollo/core/routing/app_router.dart';
import 'package:pollo/core/routing/routes.dart';

class Pollo extends StatelessWidget {
  const Pollo({super.key, required this.appRouter});

  final AppRouter appRouter;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<AppCubit>(),
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        ensureScreenSize: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              onGenerateRoute: appRouter.generateRouter,
              initialRoute: Routes.onboarding,
              theme: AppTheme.appTheme(context),
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
            ),
          );
        },
      ),
    );
  }
}
