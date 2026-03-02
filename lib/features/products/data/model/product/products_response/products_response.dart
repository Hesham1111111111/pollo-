import 'package:freezed_annotation/freezed_annotation.dart';

import '../../pagination/linkes.dart';
import '../../pagination/meta.dart';
import '../product_model.dart';

part 'products_response.freezed.dart';
part 'products_response.g.dart';

@freezed
class ProductsResponse with _$ProductsResponse {
  const factory ProductsResponse({
    required List<Product> data,
    required Links links,
    required Meta meta,
  }) = _ProductsResponse;

  factory ProductsResponse.fromJson(Map<String, dynamic> json)
  => _$ProductsResponseFromJson(json);
}