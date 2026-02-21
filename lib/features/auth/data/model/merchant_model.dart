import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchant_model.freezed.dart';
part 'merchant_model.g.dart';

@freezed
class Merchant with _$Merchant {
  const factory Merchant({
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
    DateTime? createdAt,
  }) = _Merchant;

  factory Merchant.fromJson(Map<String, dynamic> json) =>
      _$MerchantFromJson(json);
}