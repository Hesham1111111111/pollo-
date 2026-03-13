import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:pollo/features/products/data/model/product/product_model.dart';
import 'package:pollo/features/products/presentation/manager/products_state.dart';

import '../../../../core/helpers/request_state/request_state.dart';
import '../../data/repo/product_repo.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productRepo) : super(const ProductsState()) {
    selectedPriceRange = const RangeValues(minPrice, maxPrice);
  }

  final ProductRepo productRepo;

  static const double minPrice = 0;
  static const double maxPrice = 1000;

  late RangeValues selectedPriceRange;

  String? sortBy;

  final CarouselSliderController carouselController = CarouselSliderController();

  /// update price range
  void updatePriceRange(RangeValues rangeValues) {
    selectedPriceRange = rangeValues;
    emit(state.copyWith());
  }

  /// update sort
  void updateSortBy(String value) {
    if (sortBy == value) {
      sortBy = null;
    } else {
      sortBy = value;
    }

    emit(state.copyWith());
  }

  void setCurrentPage(int index) {
    emit(state.copyWith(activeIndex: index));
  }

  Future<void> getProducts() async {
    emit(
      state.copyWith(
        productState: const RequestState.loading(),
      ),
    );

    final result = await productRepo.getProduct();

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            productState: RequestState.error(failure.message),
          ),
        );
      },
      (product) {
        emit(
          state.copyWith(
            productState: RequestState.success(product),
          ),
        );
      },
    );
  }
  List<int> favoriteProducts = [];
  Future<void> addToFavorites(int id) async {
    final result = await productRepo.addToFavorite(id);

    result.fold(
          (failure) {
        debugPrint(failure.message);
      },
          (success) {

        if (favoriteProducts.contains(id)) {
          favoriteProducts.remove(id);
        } else {
          favoriteProducts.add(id);
        }

        emit(state.copyWith());
      },
    );
  }}
