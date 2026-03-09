import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/helpers/request_state/request_state.dart';
import '../../data/model/product/product_model.dart';
part 'products_state.freezed.dart';
@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState({
    @Default(0) int activeIndex,
    @Default(RequestState<List<Product>>.initial())
    RequestState<List<Product>> productState,
  }) = _ProductsState;
}