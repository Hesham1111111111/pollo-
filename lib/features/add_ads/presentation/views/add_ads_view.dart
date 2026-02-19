import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/widgets/dotted_upload_container.dart';
import 'package:pollo/features/add_ads/presentation/views/widgets/add_ads_button.dart';
import 'package:pollo/features/add_ads/presentation/views/widgets/add_ads_form.dart';

class AddAdsView extends StatelessWidget {
  const AddAdsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: Column(
            spacing: 24.h,
            children: const [
              DottedUploadContainer(),
              AddAdsForm(),
              AddAdsButton(),
            ],
          ),
        ),
      ),
    );
  }
}
