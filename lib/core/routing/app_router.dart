import 'package:flutter/material.dart';
import 'package:pollo/core/routing/routes.dart';
import 'package:pollo/features/account/presentation/views/settings_view.dart';
import 'package:pollo/features/auth/presentation/views/forget_password_view.dart';
import 'package:pollo/features/auth/presentation/views/reset_password_view.dart';
import 'package:pollo/features/auth/presentation/views/sign_in_view.dart';
import 'package:pollo/features/auth/presentation/views/sign_up_view.dart';
import 'package:pollo/features/auth/presentation/views/verify_otp_view.dart';
import 'package:pollo/features/bottom_nav/presentation/views/app_bottom_nav_view.dart';
import 'package:pollo/features/drawer_pages/presentation/views/about_view.dart';
import 'package:pollo/features/drawer_pages/presentation/views/contact_us_view.dart';
import 'package:pollo/features/drawer_pages/presentation/views/my_ads_view.dart';
import 'package:pollo/features/home/presentation/views/home_subcategory_view.dart';
import 'package:pollo/features/products/presentation/views/product_details_view.dart';
import 'package:pollo/features/products/presentation/views/products_view.dart';
import 'package:pollo/features/splash_onboarding/presentation/views/onboarding_view.dart';
import 'package:pollo/features/splash_onboarding/presentation/views/splash_view.dart';

class AppRouter {
  Route<dynamic>? generateRouter(RouteSettings settings) {
    //final Object? arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const OnboardingView(),
        );
      case Routes.splash:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SplashView(),
        );
      case Routes.signIn:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SignInView(),
        );
      case Routes.signUp:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SignUpView(),
        );
      case Routes.forgetPassword:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ForgetPasswordView(),
        );
      case Routes.verifyOtp:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const VerifyOtpView(),
        );
      case Routes.resetPassword:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ResetPasswordView(),
        );
      case Routes.bottomNav:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const AppBottomNavBarView(),
        );
      case Routes.homeSubcategory:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const HomeSubcategoryView(),
        );
      case Routes.products:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProductsView(),
        );
      case Routes.productsDetails:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ProductsDetailsView(),
        );
      case Routes.about:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const AboutView(),
        );
      case Routes.myAds:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const MyAdsView(),
        );
      case Routes.contactUs:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const ContactUsView(),
        );
      case Routes.settings:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => const SettingsView(),
        );
    }
    return null;
  }
}
