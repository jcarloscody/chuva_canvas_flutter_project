// ignore_for_file: public_member_api_docs, sort_constructors_first
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

class Drop {
  final double x;

  /// variavel [_originY]que indica a chuva caindo
  final double _originY;

  ///a medida que for cainda vai aumentando a velocidade da variavel [_originalSpeed]
  final double _originalSpeed;

  ///
  final int dropSize;

  ///o [blur] dará a sensação de profundidade.
  final double blur;

  ///y[_currentY] e speed [_currentSpeed] atuais
  double _currentY;
  double _currentSpeed;
  Drop({
    required this.x,
    required double originY,
    required double originalSpeed,
    required this.dropSize,
    required this.blur,
  })  : _currentSpeed = originalSpeed,
        _originalSpeed = originalSpeed,
        _currentY = originY,
        _originY = originY;

  void increment() {
    _currentSpeed += 0.05;
    _currentY += _currentSpeed;
  }

  void reset() {
    _currentY = _originY;
    _currentSpeed = _originalSpeed;
  }

  double get y => _currentY;
  double get currentSpeed => _currentSpeed;
}
