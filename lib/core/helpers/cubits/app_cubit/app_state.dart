part of 'app_cubit.dart';

@immutable
sealed class AppState {}

final class AppInitial extends AppState {}

final class AppNavIndexChanged extends AppState {}

final class AppLanguageChanged extends AppState {}
