import 'package:flutter/material.dart';

import '../themes/colors.dart';

class ItemCard extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;

  const ItemCard({
    super.key,
    required this.child,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: AppColors.container,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 2,
            spreadRadius: 0,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: child,
    );
  }
}
