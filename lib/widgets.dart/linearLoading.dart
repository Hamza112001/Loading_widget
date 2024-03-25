import 'package:flutter/material.dart';
import 'package:loading_assignment_sir_noman/widgets.dart/custom_painter.dart';

class MyLinearLoadingWidget extends StatelessWidget {
  const MyLinearLoadingWidget({super.key, required this.width});
  final double width;

  @override
  Widget build(context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 5),
      child: CustomPaint(
        painter: MyLoadingPainter(
          varWidth: width,
        ),
        child: SizedBox(
          height: 30,
          width: width,
        ),
      ),
    );
  }
}