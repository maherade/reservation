import 'package:flutter/material.dart';
import 'package:reservation_task/styles/color_manager.dart';

class IrregularQuadrilateralPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = ColorManager.mainColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    final path = Path()
      ..moveTo(100, 50) // Vertex 1
      ..lineTo(250, 50) // Vertex 2
      ..lineTo(350, 150) // Vertex 3
      ..lineTo(100, 150) // Vertex 4
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
