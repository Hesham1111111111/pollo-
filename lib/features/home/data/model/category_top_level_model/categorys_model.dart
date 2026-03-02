import 'package:freezed_annotation/freezed_annotation.dart';

part 'categorys_model.freezed.dart';
part 'categorys_model.g.dart';
@freezed
@freezed
class Category with _$Category {
  const factory Category({
    required int id,
    required String image,
    required String name,
    String? type,
    String? created,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
