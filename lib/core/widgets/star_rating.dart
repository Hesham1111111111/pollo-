import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StarRating extends StatelessWidget {
  final double rating;

  final double? itemSize;
  final bool ignoreGestures;
  final TextDirection? textDirection;
  final double minRating;
  final ValueChanged<double> onRatingUpdate;

  const StarRating({
    super.key,
    required this.rating,
    required this.onRatingUpdate,
    this.ignoreGestures = false,
    this.textDirection,
    this.itemSize,
    this.minRating = 0,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      ratingWidget: RatingWidget(
        full: const Icon(
          Icons.star_rounded,
          color: Color(0xffD69304),
        ),
        half: const Directionality(
          textDirection: TextDirection.ltr,
          child: Icon(
            Icons.star_half_rounded,
            color: Color(0xffD69304),
          ),
        ),
        empty: const Icon(
          Icons.star_border_rounded,
          color: Color(0xffD69304),
        ),
      ),
      initialRating: rating,
      minRating: minRating,
      maxRating: 5,
      direction: Axis.horizontal,
      itemCount: 5,
      itemSize: itemSize ?? 20.sp,
      updateOnDrag: true,
      tapOnlyMode: false,
      allowHalfRating: true,
      ignoreGestures: ignoreGestures,
      onRatingUpdate: onRatingUpdate,
      textDirection: TextDirection.ltr,
      glow: false,
    );
  }
}
