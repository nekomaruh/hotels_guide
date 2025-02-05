import 'package:flutter/material.dart';

import '../themes/colors.dart';

class DiscountChip extends StatelessWidget {
  final String discount;

  const DiscountChip({super.key, required this.discount});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      //height: 25,
      child: Chip(
        visualDensity: VisualDensity(horizontal: 0, vertical: -4),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        labelPadding: EdgeInsets.zero,
        label: FittedBox(
          child: Text(
            "$discount% off",
            style: Theme.of(context)
                .textTheme
                .labelSmall
                ?.copyWith(color: AppColors.green),
          ),
        ),
        backgroundColor: AppColors.container,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: AppColors.green),
        ),
      ),
    );
  }
}
