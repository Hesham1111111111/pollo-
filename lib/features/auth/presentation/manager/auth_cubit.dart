import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/features/auth/data/repo/auth_repo.dart';

import 'auth_state.dart';


class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepo) : super(AuthInitial());
  final AuthRepo authRepo;

  bool obscureText = false;

  void toggleObscure() {
    obscureText = !obscureText;
    emit(TextObscureChanged());
  }


}
