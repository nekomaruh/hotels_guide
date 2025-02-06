import 'package:flutter/material.dart';
import 'package:hotels_guide/ui/core/themes/colors.dart';
import 'package:hotels_guide/utils/dash_line_painter.dart';

class DropdownPlaceholder extends StatelessWidget {
  const DropdownPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'São Paulo',
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.w600
              ),
            ),
            const SizedBox(width: 8),
            Icon(
              Icons.keyboard_arrow_down,
              color: AppColors.white,
            ),
          ],
        ),
        const SizedBox(height: 2),
        CustomPaint(
          size: Size(90, 1),
          painter: DashLinePainter(),
        ),
      ],
    );
  }
}