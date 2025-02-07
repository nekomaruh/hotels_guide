import 'package:flutter/material.dart';
import 'package:hotels_guide/ui/core/themes/colors.dart';

class RatingChip extends StatelessWidget {
  final String stars;

  const RatingChip({super.key, required this.stars});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 2, right: 5, top: 1, bottom: 1),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.rating,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        spacing: 2,
        children: [
          Icon(Icons.star, color: AppColors.rating, size: 15),
          Text(
            stars,
            style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  fontWeight: FontWeight.w600
                ),
          )
        ],
      ),
    );
  }
}
