import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/features/auth/presentation/manager/request_state.dart';
import '../../data/model/login_request_model.dart';
import '../../data/model/register_request_model.dart';
import '../../data/repo/auth_repo.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo authRepo;

  AuthCubit(this.authRepo) : super(const AuthState());

  Future<void> login(LoginRequest request) async {
    emit(state.copyWith(
      loginState: const RequestState.loading(),
    ));

    final result = await authRepo.login(request);

    result.fold(
      (failure) => emit(state.copyWith(
        loginState: RequestState.error(failure.message),
      )),
      (success) => emit(state.copyWith(
        loginState: RequestState.success(success),
      )),
    );
  }

  Future<void> register(RegisterRequest request) async {
    emit(state.copyWith(
      signUpState: const RequestState.loading(),
    ));

    final result = await authRepo.register(request);

    result.fold(
      (failure) => emit(state.copyWith(
        signUpState: RequestState.error(failure.message),
      )),
      (success) => emit(state.copyWith(
        signUpState: RequestState.success(success),
      )),
    );
  }

  void toggleObscure() {
    emit(state.copyWith(
      isObscure: !state.isObscure,
    ));
  }
}
