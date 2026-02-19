import 'package:flutter/material.dart';

/// -------------------------
/// Navigation Extensions
/// -------------------------
extension NavigationExtensions on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName, {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this).pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop([dynamic result]) => Navigator.of(this).pop(result);

  /// Returns the route arguments cast to the given type [T].
  /// Throws if arguments are null or of the wrong type.
  T getRouteArguments<T>() {
    final Object? args = ModalRoute.of(this)?.settings.arguments;
    if (args == null) throw Exception('No route arguments found in ModalRoute.');
    if (args is! T) throw Exception('Route arguments are not of type $T.');
    return args as T;
  }
}

/// -------------------------
/// String Extensions
/// -------------------------
extension NullableStringExtensions on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  bool get isNotNullOrEmpty => !isNullOrEmpty;
}

extension StringExtensions on String {
  /// Capitalizes the first letter of the string.
  String capitalize() => isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';
}

extension SafeParsingExtensions on String {
  double toDoubleOr(double fallback) => double.tryParse(this) ?? fallback;

  int toIntOr(int fallback) => int.tryParse(this) ?? fallback;

  bool toBoolOr(bool fallback) => bool.tryParse(this) ?? fallback;

  DateTime toDateTimeOr(DateTime fallback) => DateTime.tryParse(this) ?? fallback;
}

/// -------------------------
/// Dynamic/Other Safe Parsing
/// -------------------------
extension SafeDynamicParsing on dynamic {
  String toStringOr(String fallback) => this?.toString() ?? fallback;

  List<String> toStringListOr(List<String> fallback) {
    if (this is List) return (this as List).map((e) => e.toString()).toList();
    return fallback;
  }
}

/// -------------------------
/// Widget Extensions
/// -------------------------
extension PaddingExtension on Widget {
  Widget withPadding([EdgeInsetsGeometry padding = const EdgeInsets.all(8)]) => Padding(padding: padding, child: this);
}

/// -------------------------
/// List Extensions
/// -------------------------
extension NullableListExtensions<T> on List<T>? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;

  bool get isNotNullOrEmpty => !isNullOrEmpty;
}

/// -------------------------
/// Double Extensions
/// -------------------------
extension PercentStringExtension on double {
  /// Converts 0.0–1.0 into "0%"–"100%"
  String toPercentString({int fractionDigits = 0}) => '${(this * 100).toStringAsFixed(fractionDigits)}%';
}
