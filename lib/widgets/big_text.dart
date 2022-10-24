import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:myflutter_ecommerce/utils/dimensions.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class BigText extends StatefulWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  BigText(
      {Key? key,
      this.color = const Color(0xFF332d2b),
      required this.text,
      this.size = 0,
      this.overflow = TextOverflow.ellipsis})
      : super(key: key);

  @override
  State<BigText> createState() => _BigTextState();
}

class _BigTextState extends State<BigText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      overflow: widget.overflow,
      style: TextStyle(
          color: widget.color,
          fontSize: widget.size == 0 ? Dimensions.font20 : widget.size,
          fontWeight: FontWeight.w400,
          fontFamily: 'Roboto'),
    );
  }
}
