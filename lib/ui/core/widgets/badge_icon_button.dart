import 'package:flutter/material.dart';
import 'package:hotels_guide/ui/core/themes/colors.dart';

class BadgeIconButton extends StatelessWidget {
  final bool enabled;
  final int count;
  final IconData icon;
  final String text;

  const BadgeIconButton({
    super.key,
    required this.enabled,
    required this.count,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Chip(
          backgroundColor: enabled ? AppColors.white: AppColors.unselected,
          visualDensity: VisualDensity.compact,
          side: BorderSide(
            color: Colors.grey.shade300,
            width: 1,
          ),
          padding: EdgeInsets.symmetric(horizontal: 3),
          label: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon, size: 15),
              const SizedBox(width: 5),
              Text(
                text,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        ),
        if (count > 0)
          Positioned(
            top: 0,
            left: 0,
            child: Badge(
              backgroundColor: AppColors.primaryVariant,
              textColor: AppColors.white,
              label: Text(count.toString(), style: TextStyle(fontSize: 12)),
            ),
          ),
      ],
    );
  }
}
