import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/locale_keys.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/features/drawer_pages/data/models/contact_us_model.dart';
import 'package:pollo/features/drawer_pages/presentation/views/widgets/contact_us/contact_us_grid_view_item.dart';

class ContactUsGridView extends StatelessWidget {
  const ContactUsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ContactUsModel> contactUsList = [
      ContactUsModel(
        svg: AppSvgs.phoneCell,
        title: context.tr(LocaleKeys.phoneNumber),
        contact: '+966 55 123 4567',
        buttonTitle: context.tr(LocaleKeys.callNow),
        onButtonTapped: () {},
      ),
      ContactUsModel(
        svg: AppSvgs.whatsapp,
        title: context.tr(LocaleKeys.whatsApp),
        contact: '+966 55 123 4567',
        buttonTitle: context.tr(LocaleKeys.contact),
        onButtonTapped: () {},
      ),
      ContactUsModel(
        svg: AppSvgs.emailColored,
        title: context.tr(LocaleKeys.email),
        contact: 'info@pollo.com',
        buttonTitle: context.tr(LocaleKeys.contact),
        onButtonTapped: () {},
      ),
    ];
    return GridView.builder(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 16.h,
        crossAxisSpacing: 16.w,
        childAspectRatio: 164.w / 219.h,
      ),
      itemCount: contactUsList.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 7.5.w, vertical: 16.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.r),
            border: Border.all(color: AppColors.border),
          ),
          child: ContactUsGridViewItem(
            contactUsItem: contactUsList[index],
          ),
        );
      },
    );
  }
}

