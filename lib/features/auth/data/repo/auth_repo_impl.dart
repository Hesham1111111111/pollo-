import 'package:dartz/dartz.dart';
import 'package:pollo/core/networking/api_endpoints.dart';
import 'package:pollo/core/networking/api_failure.dart';
import '../../../../core/networking/api_client.dart';
import 'auth_repo.dart';
import '../model/auth_response_model.dart';
import '../model/login_request_model.dart';
import '../model/register_request_model.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiClient apiClient;

  AuthRepoImpl(this.apiClient);

  @override
  Future<Either<Failure, AuthResponse>> login(LoginRequest request) {
    return apiClient.request<AuthResponse>(
      method: ApiMethods.POST,
      endpoint: ApiEndpoints.login,
      body: request.toJson(),
      response: (json) => AuthResponse.fromJson(json),
    );
  }

  @override
  Future<Either<Failure, AuthResponse>> register(RegisterRequest request) {
    return apiClient.request<AuthResponse>(
      method: ApiMethods.POST,
      endpoint: ApiEndpoints.register,
      body: request.toJson(),
      response: (json) => AuthResponse.fromJson(json),
    );
  }
}
