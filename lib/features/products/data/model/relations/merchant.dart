import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchant.freezed.dart';
part 'merchant.g.dart';
@freezed
class Merchant with _$Merchant {
  const factory Merchant({
    required int id,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    String? phone,
    required String email,
    String? username,
    required String image,
    @JsonKey(name: 'reviews_avg_rating') required int reviewsAvgRating,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _Merchant;

  factory Merchant.fromJson(Map<String, dynamic> json)
  => _$MerchantFromJson(json);
}