import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/features/auth/presentation/views/widgets/sign_in/sign_in_footer.dart';
import 'package:pollo/features/auth/presentation/views/widgets/sign_in/sign_in_form.dart';
import 'package:pollo/features/auth/presentation/views/widgets/sign_in/sign_in_header.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SignInHeader(),
        16.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
               SignInForm(),
              24.verticalSpace,
              const SignInFooter(),
            ],
          ),
        ),
      ],
    );
  }
}

