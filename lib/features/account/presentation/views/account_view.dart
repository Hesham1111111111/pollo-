import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pollo/features/account/presentation/manager/account_cubit.dart';
import 'package:pollo/features/account/presentation/manager/account_state.dart';
import 'package:pollo/features/account/presentation/views/widgets/profile/profile_header.dart';
import 'package:pollo/features/account/presentation/views/widgets/profile/profile_settings_list_view.dart';

import '../../../../core/di/service_locator.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
        create: (context) => getIt.get<AccountCubit>()..getMerchant(),
        child:Column(
      children: [
        BlocBuilder<AccountCubit, AccountState>(
          builder: (context, state) {
            return state.getMerchantState.when(
              initial: () => const SizedBox(),

              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),

              success: (merchant) {
                return ProfileHeader(
                  merchant: merchant as dynamic,
                );
              },

              error: (message) => Center(
                child: Text(message),
              ),
            );
          },
        ),

        const SizedBox(height: 16),

        const ProfileSettingsListView(),
      ],
    ))
  }
}