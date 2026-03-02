import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_sub_model.freezed.dart';

part 'category_sub_model.g.dart';

@freezed
class SubCategory with _$SubCategory {
  const factory SubCategory({
    required int id,
    required String image,
    required String name,
    String? type,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _SubCategory;

  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);
}
