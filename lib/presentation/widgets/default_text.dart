import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sizer/sizer.dart';

class DefaultText extends StatelessWidget {
  const DefaultText({
    Key? key,
    required this.text,
    required this.textSize,
    this.fontWeight,
    required this.textColor,
    this.decoration,
    this.maxLine,
  }) : super(key: key);
  final String text;
  final double textSize;
  final FontWeight? fontWeight;
  final Color textColor;
  final TextDecoration? decoration;
  final int? maxLine;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLine,
      style: TextStyle(
        fontSize: textSize,
        fontWeight: fontWeight,
        color: textColor,
        decoration: decoration,
      ),
    );
  }
}
