import 'dart:ui';

import 'package:flutter/material.dart';

class Painter extends CustomPainter {
  final offsets;
  Painter(this.offsets): super();
  @override
  void paint(Canvas canvas, Size size) {
    for(var offset in offsets) {
      canvas.drawPoints(
        PointMode.points,
        [offset],
        Paint()
          ..color = Colors.red
          ..strokeWidth = 5
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
  
}