import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  final String text;
  final Color colour;
  final double size;
  final FontWeight weight;
  const ReusableText(
      {Key? key, required this.text, required this.colour, required this.size,required this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: size, fontWeight: weight, color: colour),
    );
  }
}
