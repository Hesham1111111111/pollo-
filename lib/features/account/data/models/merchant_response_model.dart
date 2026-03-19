import '../../../auth/data/model/merchant_model.dart';

class MerchantResponseModel {
  final int? code;
  final Merchant? merchant;

  MerchantResponseModel({
    this.code,
    this.merchant,
  });

  factory MerchantResponseModel.fromJson(Map<String, dynamic> json) {
    return MerchantResponseModel(
      code: json['code'],
      merchant: json['merchant'] != null
          ? Merchant.fromJson(json['merchant'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "code": code,
      "merchant": merchant?.toJson(),
    };
  }
}