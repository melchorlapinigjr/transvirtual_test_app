import 'package:flutter/material.dart';
import 'package:transvirtual_app/enums/label_sizes.dart';
import 'package:transvirtual_app/presentation/widgets/widgets.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildItem(
          'Dashboard',
          Colors.blue.shade800,
        ),
        buildItem(
          '03:09PM',
          Colors.blue,
        )
      ],
    );
  }

  Widget buildItem(String title, Color color) {
    return MyLabel(
      title: title,
      type: LabelSizes.large,
      color: color,
      fontWeight: FontWeight.w500,
    );
  }
}
