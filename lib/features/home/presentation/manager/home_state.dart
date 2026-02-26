import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pollo/features/home/data/model/categorys_model.dart';
import '../../../../core/helpers/request_state/request_state.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(0) int activeIndex,
    @Default(RequestState<List<Category>>.initial())
    RequestState<List<Category>> categoriesState,
  }) = _HomeState;
}