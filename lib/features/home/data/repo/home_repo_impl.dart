import 'package:dartz/dartz.dart';
import 'package:pollo/core/networking/api_client.dart';
import 'package:pollo/core/networking/api_endpoints.dart';
import 'package:pollo/features/home/data/model/category_sup_model/category_sub_model.dart';
import 'package:pollo/features/home/data/repo/home_repo.dart';
import '../../../../core/networking/api_failure.dart';
import '../model/category_top_level_model/categorys_model.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  final ApiClient apiClient;

  HomeRepoImpl(this.apiClient);

  @override
  Future<Either<Failure, List<Category>>> getCategoryTop() async {
    return apiClient.request<List<Category>>(
      method: ApiMethods.GET,
      endpoint: ApiEndpoints.categoriesTopLevel,
      response: (json) {
        final List dataList = json['data'] as List;
        return dataList
            .map((e) => Category.fromJson(e as Map<String, dynamic>))
            .toList();
      },
    );
  }

  @override
  Future<Either<Failure, List<SubCategory>>> getSubCategory() {
    return apiClient.request<List<SubCategory>>(
        method: ApiMethods.GET,
        endpoint: ApiEndpoints.subCategories,
        response: (json) {
          final dataList = json['data'] as List;
          return dataList
              .map((e) => SubCategory.fromJson(e as Map<String, dynamic>))
              .toList();
        });
  }
}
