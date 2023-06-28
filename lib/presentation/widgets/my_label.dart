import 'package:flutter/material.dart';

import '../../enums/title_types.dart';

class MyLabel extends StatelessWidget {
  final String title;
  final TitleTypes? type;
  final bool? shouldOverflow;
  final Color? color;
  final FontWeight? fontWeight;

  const MyLabel(
      {super.key,
      required this.title,
      this.type,
      this.shouldOverflow = true,
      this.fontWeight,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: color, fontSize: getTitleSize(), fontWeight: fontWeight),
      overflow: shouldOverflow! ? TextOverflow.ellipsis : null,
      textAlign: TextAlign.center,
    );
  }

  double getTitleSize() {
    switch (type) {
      case TitleTypes.extraLarge:
        return 34;
      case TitleTypes.large:
        return 24;
      case TitleTypes.medium:
        return 16;
      default:
        return 14;
    }
  }
}
