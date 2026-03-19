import 'package:dartz/dartz.dart';
import 'package:pollo/features/account/data/models/merchant_response_model.dart';

import '../../../../core/networking/api_failure.dart';

abstract class AccountRepo {
  Future<Either<Failure, MerchantResponseModel>> getMerchant(
      MerchantResponseModel model);
}
