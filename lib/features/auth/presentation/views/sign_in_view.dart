import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/core/di/service_locator.dart';
import 'package:pollo/features/auth/presentation/manager/auth_cubit.dart';
import 'package:pollo/features/auth/presentation/views/widgets/sign_in/sign_in_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt.get<AuthCubit>(),
      child: const Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: SignInBody(),
          ),
        ),
      ),
    );
  }
}