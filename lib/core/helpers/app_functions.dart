import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class AppFunctions {
  AppFunctions._();

  static bool isTokenExpired(String token) {
    try {
      final List<String> parts = token.split('.');
      if (parts.length != 3) return true;

      final payload = json.decode(utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))));

      final exp = payload['exp'];
      final DateTime expiryDate = DateTime.fromMillisecondsSinceEpoch(exp * 1000);

      return DateTime.now().isAfter(expiryDate);
    } catch (e) {
      return true;
    }
  }

  static bool isEnglish(BuildContext context) {
    return context.locale.languageCode == 'en';
  }

  static bool isArabic(BuildContext context) {
    return context.locale.languageCode == 'ar';
  }

  /// Switches language between English and Arabic dynamically
  static Future<void> switchLanguage(BuildContext context) async {
    final String currentLocale = context.locale.languageCode;

    if (currentLocale == 'en') {
      await context.setLocale(const Locale('ar'));
    } else {
      await context.setLocale(const Locale('en'));
    }
  }

  /// Get current language code dynamically
  static String getCurrentLanguage(BuildContext context) {
    return context.locale.languageCode;
  }
}
