import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/features/auth/presentation/views/widgets/verify_otp/otp_pin_put.dart';
import 'package:pollo/features/auth/presentation/views/widgets/verify_otp/verify_otp_footer.dart';
import 'package:pollo/features/auth/presentation/views/widgets/verify_otp/verify_otp_header.dart';

class VerifyOtpBody extends StatelessWidget {
  const VerifyOtpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24.h,
      children: [
        const VerifyOtpHeader(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            spacing: 24.h,
            children: const [
              VerifyOtpPinPut(),
              VerifyOtpFooter(),
            ],
          ),
        )
      ],
    );
  }
}
