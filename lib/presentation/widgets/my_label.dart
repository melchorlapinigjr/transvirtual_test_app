import 'package:flutter/material.dart';

import '../../enums/label_sizes.dart';

class MyLabel extends StatelessWidget {
  final String title;
  final LabelSizes? type;
  final bool? shouldOverflow;
  final Color? color;
  final FontWeight? fontWeight;
  final bool? underline;
  final double? letterSpacing;
  final int? maxLines;
  final TextAlign? textAlign;

  const MyLabel(
      {super.key,
      required this.title,
      this.type,
      this.shouldOverflow = true,
      this.fontWeight,
      this.color,
      this.underline = false,
      this.maxLines,
      this.textAlign,
      this.letterSpacing});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      style: TextStyle(
        color: color,
        fontSize: getTitleSize(),
        fontWeight: fontWeight,
        letterSpacing: letterSpacing,
        decoration: underline! ? TextDecoration.underline : null,
      ),
      overflow: shouldOverflow! ? TextOverflow.ellipsis : null,
      textAlign: textAlign ?? TextAlign.center,
    );
  }

  double getTitleSize() {
    switch (type) {
      case LabelSizes.extraLarge:
        return 34;
      case LabelSizes.large:
        return 24;
      case LabelSizes.medium:
        return 16;
      default:
        return 14;
    }
  }
}
