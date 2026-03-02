import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../auth/data/model/merchant_model.dart';
import '../../../../home/data/model/category_top_level_model/categorys_model.dart';
import '../location/city.dart';
import '../location/country.dart';
import '../location/state_model.dart';
import '../relations/gallery.dart';
import '../location/locitions.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';
@freezed
class Product with _$Product {
  const factory Product({
    required int id,
    required String image,
    required List<Gallery> gallery,
    required String name,
    required String price,
    required String description,
    @JsonKey(name: 'remove_at') required String removeAt,
    Merchant? merchant,
    required Category category,
    required Country country,
    required StateModel state,
    required City city,
    String? latitude,
    String? longitude,
    required Location location,
    @JsonKey(name: 'created_at') required String createdAt,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json)
  => _$ProductFromJson(json);
}