import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/helpers/request_state/request_state.dart';
import '../../data/model/category_sup_model/category_sub_model.dart';
import '../../data/model/category_top_level_model/categorys_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(0) int activeIndex,
    @Default(RequestState<List<Category>>.initial())
    RequestState<List<Category>> topCategoriesState,
    @Default(RequestState<List<SubCategory>>.initial())
    RequestState<List<SubCategory>> subCategoriesState,
  }) = _HomeState;
}