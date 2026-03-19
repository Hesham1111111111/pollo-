import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pollo/core/helpers/request_state/request_state.dart';
import 'package:pollo/features/account/data/models/merchant_response_model.dart';


part 'account_state.freezed.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState({

    @Default(InitialState()) RequestState<MerchantResponseModel> getMerchantState,

  }) = _AccountState;
}