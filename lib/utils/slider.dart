import 'package:flutter/material.dart';

class CustomSlider extends StatelessWidget {
  final Color color;
  const CustomSlider({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18,
      width: 56,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
