import 'package:dartz/dartz.dart';
import 'package:pollo/core/networking/api_client.dart';
import 'package:pollo/core/networking/api_endpoints.dart';
import 'package:pollo/core/networking/api_failure.dart';
import 'package:pollo/features/account/data/models/merchant_response_model.dart';

import 'account_repo.dart';

class AccountRepoImpl implements AccountRepo {
  final ApiClient apiClient;

  AccountRepoImpl(this.apiClient);

  @override
  Future<Either<Failure, MerchantResponseModel>> getMerchant(
      MerchantResponseModel model) {
    return apiClient.request<MerchantResponseModel>(
      method: ApiMethods.GET,
      endpoint: ApiEndpoints.getMerchant,
      response: (json) => MerchantResponseModel.fromJson(json),
    );
  }
}
