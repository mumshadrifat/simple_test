import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class BigText2 extends StatelessWidget {
  Color? color;
  String text;
  double size;
  TextStyle? textStyle;

  BigText2({
    Key? key,
    this.color = const Color(0xFF332d2b),
    required this.text,
    this.size = 20,
    this.textStyle,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text.tr,
      //overflow: overflow,
      style: textStyle
    );
  }
}