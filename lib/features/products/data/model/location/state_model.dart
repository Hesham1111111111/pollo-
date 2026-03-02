

import 'package:freezed_annotation/freezed_annotation.dart';

part 'state_model.freezed.dart';
part 'state_model.g.dart';
@freezed
class StateModel with _$StateModel {
  const factory StateModel({
    required int id,
    required String name,
  }) = _StateModel;

  factory StateModel.fromJson(Map<String, dynamic> json)
  => _$StateModelFromJson(json);
}