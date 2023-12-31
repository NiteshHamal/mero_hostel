// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  MyText({
    Key? key,
    required this.text,
    required this.color,
    required this.size,
    this.top,
    this.bottom,
    this.left,
    this.right,
  }) : super(key: key);
  //initializing variables
  final String text;
  final Color color;
  final double size;
  final double? top;
  final double? bottom;
  final double? left;
  final double? right;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: top ?? 0,
          bottom: bottom ?? 0,
          left: left ?? 0,
          right: right ?? 0),
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: size),
      ),
    );
  }
}
