import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/features/auth/presentation/views/widgets/sign_up/sign_up_footer.dart';
import 'package:pollo/features/auth/presentation/views/widgets/sign_up/sign_up_form.dart';
import 'package:pollo/features/auth/presentation/views/widgets/sign_up/sign_up_header.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SignUpHeader(),
          16.verticalSpace,
          const SignUpForm(),
          24.verticalSpace,
          const SignUpFooter(),
        ],
      ),
    );
  }
}
