import 'package:flutter/material.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/features/home/data/model/category_sup_model/category_sub_model.dart';

class HomeCarouselItem extends StatelessWidget {
  const HomeCarouselItem({
    super.key, required this.subCategory,
  });
final SubCategory subCategory;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to',
                  style: TextStyles.style16Regular(color: Colors.white),
                ),
                Text(
                  'Pollo Store',
                  style: TextStyles.style24SemiBold(color: Colors.white),
                ),
                Text(
                  subCategory.name,
                  style: TextStyles.style16Regular(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              AppImages.doctor,
              fit:BoxFit.fill,
            )
          ),
        ),
      ],
    );
  }
}
