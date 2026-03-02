import 'package:dartz/dartz.dart';
import 'package:pollo/core/networking/api_failure.dart';

import '../model/product/product_model.dart';

abstract class ProductRepo {
  Future<Either<Failure, List<Product>>> getProduct();
}
