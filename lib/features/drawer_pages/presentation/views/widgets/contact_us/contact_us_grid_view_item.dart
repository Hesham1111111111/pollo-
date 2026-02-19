import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/core/widgets/app_button.dart';
import 'package:pollo/features/drawer_pages/data/models/contact_us_model.dart';

class ContactUsGridViewItem extends StatelessWidget {
  const ContactUsGridViewItem({
    super.key,
    required this.contactUsItem,
  });

  final ContactUsModel contactUsItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 18.h),
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.border),
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(
            contactUsItem.svg,
            width: 24.r,
            height: 24.r,
          ),
        ),
        Text(
          contactUsItem.title,
          style: TextStyles.style18Medium(),
        ),
        Text(
          contactUsItem.contact,
          style: TextStyles.style14Medium(color: AppColors.secondaryText),
        ),
        AppButton(
          title: contactUsItem.buttonTitle,
          onTap: contactUsItem.onButtonTapped,
        ),
      ],
    );
  }
}
