import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/core/di/service_locator.dart';
import 'package:pollo/features/drawer_pages/presentation/manager/drawer_pages_cubit.dart';
import 'package:pollo/features/drawer_pages/presentation/views/widgets/about/about_body.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<DrawerPagesCubit>(),
      child: const Scaffold(
        body: AboutBody(),
      ),
    );
  }
}
