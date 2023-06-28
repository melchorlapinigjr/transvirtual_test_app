import 'package:flutter/material.dart';

import '../../enums/title_types.dart';
import 'widgets.dart';

class CompanyLogo extends StatelessWidget {
  final Color? color;
  final bool? isSmall;

  const CompanyLogo({super.key, this.color, this.isSmall = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.sports_baseball,
          color: color ?? Colors.white,
          size: isSmall! ? 48 : 64,
        ),
        const SizedBox(
          width: 16,
        ),
        MyLabel(
          title: 'TransVirtual',
          type: isSmall! ? TitleTypes.large : TitleTypes.extraLarge,
          color: color ?? Colors.white,
        )
      ],
    );
  }
}
