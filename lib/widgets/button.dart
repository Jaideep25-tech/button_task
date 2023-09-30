import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Color color;
  final Color bgColor;
  final double width;
  const MyButton({
    super.key,
    required this.text,
    required this.color,
    required this.bgColor,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width,
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(30)),
      child: Center(
          child: Text(
        text,
        style:
            TextStyle(color: color, fontSize: 15, fontWeight: FontWeight.w500),
      )),
    );
  }
}
