import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchant_model.freezed.dart';
part 'merchant_model.g.dart';

@freezed
class MerchantModel with _$MerchantModel {
  const factory MerchantModel({
    required int id,

    @JsonKey(name: 'first_name')
    required String firstName,

    @JsonKey(name: 'last_name')
    required String lastName,

    String? phone,
    required String email,
    String? username,
    String? image,

    @JsonKey(name: 'reviews_avg_rating')
    int? reviewsAvgRating,

    @JsonKey(name: 'created_at')
    String? createdAt,
  }) = _MerchantModel;

  factory MerchantModel.fromJson(Map<String, dynamic> json) =>
      _$MerchantModelFromJson(json);
}
