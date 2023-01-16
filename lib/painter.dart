import 'dart:ui';

import 'package:flutter/material.dart';

class Painter extends CustomPainter {
  late Color currentColor = Colors.black;
  Paint paints = Paint()
    ..color = Colors.black
    ..strokeWidth = 5;
  

  final offsets;
  Painter(this.offsets,this.currentColor): super();
  @override
  void paint(Canvas canvas, Size size) {
    for(int i  =  0; i < offsets.length; i++) {
      if(offsets[i] != Offset.zero && offsets[i+1] != Offset.zero) {
        canvas.drawLine(offsets[i], offsets[i+1], paints..color = currentColor);
      } else if(offsets[i] != Offset.zero && offsets[i+1] == Offset.zero) {
        canvas.drawPoints(
          PointMode.points,
          [offsets[i]],
          paints..color = currentColor
        );
      }
      
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
  
}