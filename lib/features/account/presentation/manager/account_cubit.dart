import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/features/account/data/models/merchant_response_model.dart';
import 'package:pollo/features/account/data/repo/account_repo.dart';

import '../../../../core/helpers/request_state/request_state.dart';
import 'account_state.dart';

class AccountCubit extends Cubit<AccountState> {
  AccountCubit(this.accountRepo) : super(const AccountState());
  final AccountRepo accountRepo;

  Future<void> getMerchant() async {
    emit(state.copyWith(
      getMerchantState: const RequestState.loading(),
    ));

    final result = await accountRepo.getMerchant(MerchantResponseModel());

    result.fold(
      (failure) => emit(state.copyWith(
        getMerchantState: RequestState.error(failure.message),
      )),
      (success) => emit(state.copyWith(
        getMerchantState: RequestState.success(success),
      )),
    );
  }
}
