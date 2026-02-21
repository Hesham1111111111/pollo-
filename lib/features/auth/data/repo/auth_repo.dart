import 'package:dartz/dartz.dart';
import '../../../../core/networking/api_failure.dart';
import '../model/auth_response_model.dart';
import '../model/login_request_model.dart';
import '../model/register_request_model.dart';

abstract class AuthRepo {
  Future<Either<Failure, AuthResponse>> login(LoginRequest request);

  Future<Either<Failure , AuthResponse>> register(RegisterRequest request);
}
