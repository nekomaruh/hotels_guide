import 'package:flutter/material.dart';
import 'package:hotels_guide/ui/core/themes/colors.dart';

class DashLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = AppColors.white
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    double dashWidth = 2, dashSpace = 2;
    double startX = 0;

    while (startX < size.width) {
      canvas.drawLine(
        Offset(startX, 0),
        Offset(startX + dashWidth, 0),
        paint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}