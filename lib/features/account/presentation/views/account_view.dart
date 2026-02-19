import 'package:flutter/material.dart';
import 'package:pollo/features/account/presentation/views/widgets/profile/profile_header.dart';
import 'package:pollo/features/account/presentation/views/widgets/profile/profile_settings_list_view.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileHeader(),
        ProfileSettingsListView(),
      ],
    );
  }
}
