import 'package:cafe_management/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../config/themes/colors.dart';

class MyButton extends StatelessWidget {
  final double doubleWidth;
  final double borderRadius;
  final double fontSize;
  final String text;
  final Function function;
  MyButton(
      {Key? key,
      required this.doubleWidth,
      required this.function,
      required this.text,
      required this.fontSize,
      required this.borderRadius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height(context) / 13,
        width: doubleWidth,
        decoration: BoxDecoration(
          color: myDefaultColor, //HexColor('#53B175'),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: MaterialButton(
          //shape: const StadiumBorder(),
          onPressed: () {
            function();
          },
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              color: HexColor('#FFF9FF'),
            ),
          ),
        ),
      ),
    );
  }
}
