import 'package:flutter/material.dart';

class MyLoadingPainter extends CustomPainter {
  MyLoadingPainter({required this.varWidth});
  double varWidth;
  @override
  void paint(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    canvas.drawLine(
        Offset(0, height * 0.5),
        Offset(varWidth, height * 0.5),
        Paint()
          ..color = Colors.red
          ..strokeWidth = 24
          ..strokeCap = StrokeCap.round);
         
  }

  @override
  bool shouldRepaint(MyLoadingPainter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(MyLoadingPainter oldDelegate) => true;
}
