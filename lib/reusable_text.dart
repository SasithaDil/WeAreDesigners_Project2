import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  final String text;
  final Color colour;
  final double size;
  const ReusableText({
    Key? key, required this.text, required this.colour, required this.size
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style:  TextStyle(fontSize: size, fontWeight: FontWeight.bold, color: colour ),
    );
  }
}