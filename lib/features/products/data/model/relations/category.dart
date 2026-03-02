


import 'package:freezed_annotation/freezed_annotation.dart';
part 'category.freezed.dart';
part 'category.g.dart';
@freezed
class Category with _$Category {
  const factory Category({
    required int id,
    required String image,
    required String name,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json)
  => _$CategoryFromJson(json);
}