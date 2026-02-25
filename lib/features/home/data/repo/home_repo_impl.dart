import 'package:dartz/dartz.dart';
import 'package:pollo/core/networking/api_client.dart';
import 'package:pollo/core/networking/api_endpoints.dart';
import 'package:pollo/features/home/data/model/categorys_model.dart';
import 'package:pollo/features/home/data/repo/home_repo.dart';
import '../../../../core/networking/api_failure.dart';

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
}
