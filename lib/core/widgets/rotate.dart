import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:pollo/core/helpers/app_functions.dart';

class Rotate extends StatelessWidget {
  final double degrees;
  final Widget child;

  const Rotate({
    super.key,
    this.degrees = 180,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final double angleDegrees = AppFunctions.isEnglish(context) ? 0 : degrees;

    return Transform.rotate(
      angle: angleDegrees * math.pi / 180,
      child: child,
    );
  }
}
