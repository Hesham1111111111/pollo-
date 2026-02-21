import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/model/login_request_model.dart';
import '../../data/model/register_request_model.dart';
import '../../data/repo/auth_repo.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthRepo authRepo;

  AuthCubit(this.authRepo) : super(const AuthState.initial());

  bool obscureText = true;

  void toggleObscure() {
    obscureText = !obscureText;
    emit(AuthState.obscureTextChanged(isObscure: obscureText));
  }

  Future<void> login(LoginRequest request) async {
    emit(const AuthState.loading());
    final result = await authRepo.login(request);

    result.fold(
          (failure) => emit(AuthState.error(error: failure.message, )),
          (success) => emit(AuthState.success(authResponse: success)),
    );
  }

  Future<void> register(RegisterRequest request) async {
    emit(const AuthState.loading());
    final result = await authRepo.register(request);

    result.fold(
          (failure) => emit(AuthState.error(error: failure.message)),
          (success) => emit(AuthState.success(authResponse: success)),
    );
  }
}