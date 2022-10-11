import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

// ignore: must_be_immutable
class SmallText extends StatefulWidget {
  Color? color;
  final String text;
  double size;
  double height;
  SmallText(
      {Key? key,
      this.color = const Color(0xFFccc7c5),
      required this.text,
      this.size = 12,
      this.height = 1.2})
      : super(key: key);

  @override
  State<SmallText> createState() => _SmallTextState();
}

class _SmallTextState extends State<SmallText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      maxLines: 1,
      style: TextStyle(
          height: widget.height,
          color: widget.color,
          fontSize: widget.size,
          fontFamily: 'Roboto'),
    );
  }
}
