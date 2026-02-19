import 'package:pollo/core/networking/api_services.dart';
import 'package:pollo/features/auth/data/repo/auth_repo.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiService apiService;

  AuthRepoImpl({required this.apiService});


}
