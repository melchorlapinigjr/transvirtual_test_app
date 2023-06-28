import 'package:flutter/material.dart';

import '../../enums/title_types.dart';
import 'widgets.dart';

class CompanyLogo extends StatelessWidget {
  const CompanyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.sports_baseball,
          color: Colors.white,
          size: 64,
        ),
        MyLabel(
          title: 'TransVirtual',
          type: TitleTypes.extraLarge,
          color: Colors.white,
        )
      ],
    );
  }
}
