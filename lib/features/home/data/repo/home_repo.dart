import 'package:dartz/dartz.dart';
import 'package:pollo/core/networking/api_failure.dart';
import 'package:pollo/features/home/data/model/category_sup_model/category_sub_model.dart';
import '../model/category_top_level_model/categorys_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Category>>> getCategoryTop();
  Future<Either<Failure, List<SubCategory>>> getSubCategory();
}
