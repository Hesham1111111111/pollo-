import 'package:flutter/material.dart';
import 'package:pollo/core/resources/assets.dart';
import 'package:pollo/core/resources/styles.dart';

class HomeCarouselItem extends StatelessWidget {
  const HomeCarouselItem({
    super.key,
  });

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
                  'All-in-One Vet Store',
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
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
