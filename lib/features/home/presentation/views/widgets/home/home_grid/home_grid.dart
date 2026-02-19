import 'package:flutter/material.dart';
import 'package:pollo/core/resources/styles.dart';
import 'package:pollo/features/home/presentation/views/widgets/home/home_grid/home_grid_view_builder.dart';

class HomeGrid extends StatelessWidget {
  const HomeGrid({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyles.style20SemiBold(),
          ),
          const HomeGridViewBuilder(),
        ],
      ),
    );
  }
}

