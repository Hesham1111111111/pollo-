import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollo/core/helpers/app_functions.dart';
import 'package:pollo/core/resources/colors.dart';
import 'package:pollo/core/resources/styles.dart';

class SwitchLanguageButton extends StatelessWidget {
  const SwitchLanguageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await AppFunctions.switchLanguage(context);
      },
      child: Container(
        padding: EdgeInsets.all(8.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColors.lightPrimary,
        ),
        child: Directionality(
          textDirection: AppFunctions.isEnglish(context) ? TextDirection.rtl : TextDirection.ltr,
          child: Row(
            spacing: 8.w,
            children: [
              Icon(
                Icons.language,
                size: 20.w,
                color: Colors.white,
              ),
              Text(
                AppFunctions.isEnglish(context) ? 'العربية' : 'English',
                style: TextStyles.style16Medium(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
