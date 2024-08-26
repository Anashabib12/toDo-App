import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Icon icon;
  final String text1;
  final String text2;
  final String text3;
  final double? width;
  final double? height;

  const CustomContainer({
    Key? key,
    required this.icon,
    required this.text1,
    required this.text2,
    required this.text3,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: const Color(0xFFA6A6A6),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(alignment: Alignment.topRight, child: icon),
            const SizedBox(height: 2),
            Text(
              text1,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFDADADA)),
            ),
            const SizedBox(height: 10),
            Text(
              text2,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFFFFFF)),
            ),
            const SizedBox(height: 7),
            Text(
              text3,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFFFFFFFF)),
            ),
          ],
        ),
      ),
    );
  }
}
