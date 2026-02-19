import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pollo/core/helpers/cubits/app_cubit/app_cubit.dart';
import 'package:pollo/core/networking/api_services.dart';
import 'package:pollo/core/networking/dio_factory.dart';
import 'package:pollo/features/auth/data/repo/auth_repo_impl.dart';
import 'package:pollo/features/auth/presentation/manager/auth_cubit.dart';
import 'package:pollo/features/bottom_nav/presentation/manager/bottom_nav_cubit.dart';
import 'package:pollo/features/drawer_pages/presentation/manager/drawer_pages_cubit.dart';
import 'package:pollo/features/home/presentation/manager/home_cubit.dart';
import 'package:pollo/features/products/presentation/manager/products_cubit.dart';
import 'package:pollo/features/splash_onboarding/presentation/manager/onboarding_cubit.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // Register Dio instance
  getIt.registerSingleton<Dio>(DioFactory.dio);
  // Register API Service with the Dio instance
  getIt.registerSingleton<ApiService>(ApiService(getIt.get<Dio>()));
  // Register application-wide cubits
  getIt.registerFactory<AppCubit>(() => AppCubit());
  // <---------------------------------------------------------------------------->
  // Features
  // <---------------------------------------------------------------------------->
  // Onboarding
  getIt.registerFactory<OnboardingCubit>(() => OnboardingCubit());
  // <---------------------------------------------------------------------------->
  // Auth
  getIt.registerLazySingleton(
    () => AuthRepoImpl(apiService: getIt.get<ApiService>()),
  );
  getIt.registerFactory<AuthCubit>(
      () => AuthCubit(AuthRepoImpl(apiService: getIt.get<ApiService>())));
  // <---------------------------------------------------------------------------->
  // Bottom Nav
  getIt.registerFactory<BottomNavCubit>(() => BottomNavCubit());
  // <---------------------------------------------------------------------------->
  // Home
  getIt.registerFactory<HomeCubit>(() => HomeCubit());
  // <---------------------------------------------------------------------------->
  // Products
  getIt.registerFactory<ProductsCubit>(() => ProductsCubit());
  // <---------------------------------------------------------------------------->
  // Drawer Pages
  getIt.registerFactory<DrawerPagesCubit>(() => DrawerPagesCubit());
}
