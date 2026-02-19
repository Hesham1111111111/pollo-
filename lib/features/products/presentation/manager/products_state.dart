part of 'products_cubit.dart';

@immutable
sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}

final class PriceRangeUpdated extends ProductsState {}

final class SortByUpdated extends ProductsState {}

final class CarouselIndexChanged extends ProductsState {}

