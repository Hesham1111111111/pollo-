import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:pollo/core/networking/api_endpoints.dart';
import 'package:pollo/core/networking/api_failure.dart';
import '../../../../core/networking/api_services.dart';
import 'auth_repo.dart';
import '../model/auth_response_model.dart';
import '../model/login_request_model.dart';
import '../model/register_request_model.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiService apiService;

  AuthRepoImpl(this.apiService);

  @override
  @override
  Future<Either<Failure, AuthResponse>> login(LoginRequest request) async {
    try {
      final response = await apiService.dio.post(
        ApiEndpoints.login,
        data: request.toJson(),
      );

      if (response.data is Map<String, dynamic>) {
        final authResponse = AuthResponse.fromJson(response.data);
        return Right(authResponse);
      } else {
        return Left(ServerFailure('Unexpected server response'));
      }

    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure('Unexpected error'));
    }
  }

  @override
  Future<Either<Failure, AuthResponse>> register(RegisterRequest request) async {
    try {
      final response = await apiService.dio.post(
        ApiEndpoints.register,
        data: request.toJson(),
      );

      if (response.data is Map<String, dynamic>) {
        final authResponse = AuthResponse.fromJson(response.data);
        return Right(authResponse);
      } else {
        return Left(ServerFailure('Unexpected server response'));
      }

    } on DioException catch (e) {
      return Left(ServerFailure.fromDioException(e));
    } catch (e) {
      return Left(ServerFailure('Unexpected error'));
    }
  }}