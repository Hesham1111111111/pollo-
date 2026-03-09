import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/core/di/service_locator.dart';
import 'package:pollo/core/helpers/bloc_observer.dart';
import 'package:pollo/core/networking/dio_factory.dart';
import 'package:pollo/core/routing/app_router.dart';
import 'package:pollo/core/shared_pref/shared_pref_helper.dart';
import 'package:pollo/pollo.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait(
    [
      EasyLocalization.ensureInitialized(),
      SharedPrefHelper.init(),
      DioFactory.initialize(),
      setupServiceLocator(),
    ],
  );
  Bloc.observer = MyBlocObserver();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light, // white icons on Android
      statusBarBrightness: Brightness.dark, // white icons on iOS
    ),
  );
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      fallbackLocale: const Locale('en'),
      path: 'assets/translations',
      child: Pollo(
        appRouter: AppRouter(),
      ),
    ),
  );
}
