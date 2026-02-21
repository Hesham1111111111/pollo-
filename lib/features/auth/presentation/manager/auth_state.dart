import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/model/auth_response_model.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.success({required AuthResponse authResponse}) = _Success;
  const factory AuthState.error({required String error}) = _Error;
  const factory AuthState.obscureTextChanged({required bool isObscure}) = _ObscureTextChanged;
}