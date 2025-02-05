import 'package:flutter/material.dart';

import '../themes/colors.dart';

class DiscountChip extends StatelessWidget {
  final String discount;

  const DiscountChip({super.key, required this.discount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: AppColors.container, // Color de fondo
        borderRadius: BorderRadius.circular(20), // Bordes redondeados
        border: Border.all(color: AppColors.green), // Borde
      ),
      child: FittedBox(
        child: Text(
          "$discount% off",
          style: Theme.of(context)
              .textTheme
              .labelLarge
              ?.copyWith(color: AppColors.green),
          textHeightBehavior: TextHeightBehavior(
            applyHeightToFirstAscent: true,
            applyHeightToLastDescent: true,
            leadingDistribution: TextLeadingDistribution.proportional,
          ),
        ),
      ),
    );
  }
}
