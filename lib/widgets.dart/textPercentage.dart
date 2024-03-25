
import 'package:flutter/material.dart';

class MyPercentageTextWidget extends StatelessWidget {
  const MyPercentageTextWidget({super.key, required this.percent});
  final int percent;
  @override
  Widget build(BuildContext context) {
    return Text(
      'Loading $percent',
      style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    );
  }
}