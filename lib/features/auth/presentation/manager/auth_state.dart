import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pollo/features/auth/presentation/manager/request_state.dart';

import '../../data/model/auth_response_model.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(1) int currentCycle,
    @Default(InitialState()) RequestState<AuthResponse> signUpState,
    @Default(InitialState()) RequestState<AuthResponse> loginState,
    @Default(true) bool isObscure,
  }) = _AuthState;
}