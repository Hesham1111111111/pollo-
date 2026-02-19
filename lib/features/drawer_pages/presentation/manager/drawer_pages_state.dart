part of 'drawer_pages_cubit.dart';

@immutable
sealed class DrawerPagesState {}

final class DrawerPagesInitial extends DrawerPagesState {}

final class CarouselIndexChanged extends DrawerPagesState {}
