import 'dart:math';

import 'package:flutter/material.dart';

class RainPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.lightBlueAccent.shade400
      ..style = PaintingStyle.fill;

    final path = Path();

    path.moveTo(size.width / 2 - 2, size.height / 2);
    path.lineTo(size.width / 2, size.height / 2 - 50);
    path.lineTo(size.width / 2 + 2, size.height / 2);
    path.arcTo(
      Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: 2,
      ),
      0,
      pi,
      false,
    );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }
}
