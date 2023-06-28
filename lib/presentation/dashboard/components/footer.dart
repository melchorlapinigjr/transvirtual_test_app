import 'package:flutter/material.dart';
import 'package:transvirtual_app/enums/title_types.dart';

import '../../../utils/ui_helpers.dart';
import '../../widgets/widgets.dart';

class BodyFooter extends StatelessWidget {
  const BodyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            item('Privacy'),
            horizontalSpaceMedium,
            item('Legal'),
          ],
        ),
        verticalSpaceMedium,
        MyLabel(
          title:
              'Copyright @ 2014-${DateTime.now().year} Rapid Teks. All rights reserved.',
          type: TitleTypes.medium,
        )
      ],
    );
  }

  Widget item(label) {
    return MyLabel(
      title: label,
      letterSpacing: 2,
      underline: true,
      color: Colors.orangeAccent,
      type: TitleTypes.medium,
    );
  }
}
