import 'package:flutter/material.dart';
import 'package:pollo/core/resources/colors.dart';

class GradientText extends StatelessWidget {
  final String text;
  final TextStyle? style; // ✅ new optional style
  final double? fontSize;
  final FontWeight? fontWeight;
  final Gradient? gradient;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  const GradientText(
    this.text, {
    super.key,
    this.gradient,
    this.style,
    this.fontSize,
    this.fontWeight,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    final Gradient activeGradient = gradient ?? AppColors.appGradient;

    final TextStyle effectiveStyle = (style ?? const TextStyle()).copyWith(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: Colors.white,
    );

    return ShaderMask(
      shaderCallback: (bounds) => activeGradient.createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
      blendMode: BlendMode.srcIn,
      child: Text(
        text,
        style: effectiveStyle,
        textAlign: textAlign,
        maxLines: maxLines,
        overflow: overflow,
      ),
    );
  }
}
