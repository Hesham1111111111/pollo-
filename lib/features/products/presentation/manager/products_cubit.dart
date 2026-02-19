import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial()) {
    selectedPriceRange = RangeValues(minPrice, maxPrice);
  }

  final double minPrice = 0;
  final double maxPrice = 1000;
  late RangeValues selectedPriceRange;

  void updatePriceRange(RangeValues rangeValues) {
    selectedPriceRange = rangeValues;
    emit(PriceRangeUpdated());
  }

  String? sortBy;

  void updateSortBy(String value) {
    if (sortBy == value) {
      sortBy = null;
      emit(SortByUpdated());
      return;
    }
    sortBy = value;
    emit(SortByUpdated());
  }

  final CarouselSliderController carouselController = CarouselSliderController();
  int activeIndex = 0;

  void setCurrentPage(int index) {
    activeIndex = index;
    emit(CarouselIndexChanged());
  }
}
