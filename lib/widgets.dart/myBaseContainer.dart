import 'package:flutter/material.dart';

class MyBaseContainer extends StatelessWidget {
  const MyBaseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(23), color: Colors.amberAccent),
        height: 30,
        width: 200);
  }
}