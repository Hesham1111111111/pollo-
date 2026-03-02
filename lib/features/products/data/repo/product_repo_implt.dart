import 'package:dartz/dartz.dart';
import 'package:pollo/core/networking/api_client.dart';
import 'package:pollo/core/networking/api_endpoints.dart';
import 'package:pollo/core/networking/api_failure.dart';
import 'package:pollo/features/products/data/repo/product_repo.dart';

import '../model/product/product_model.dart';

class ProductRepoImpl implements ProductRepo {
  final ApiClient apiClient;

  ProductRepoImpl(this.apiClient);

  @override
  Future<Either<Failure, List<Product>>> getProduct() {
    return apiClient.request<List<Product>>(
        method: ApiMethods.GET,
        endpoint: ApiEndpoints.products,
        response: (json) {
          final List<dynamic> product = json['data'] as List<dynamic>;          return product
              .map((e) => Product.fromJson(e as Map<String, dynamic>))
              .toList();
        });
  }
}
