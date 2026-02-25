import 'package:dartz/dartz.dart';
import 'package:pollo/core/networking/api_failure.dart';
import 'package:pollo/features/home/data/model/categorys_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Category>>> getCategoryTop();
}
