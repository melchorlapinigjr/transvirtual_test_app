import 'package:flutter/material.dart';

import '../../enums/title_types.dart';
import 'widgets.dart';

class MyInputField extends StatelessWidget {
  final String label;
  final IconData suffixIcon;

  const MyInputField(
      {super.key, required this.label, required this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: MyLabel(
          title: label,
          type: TitleTypes.medium,
        ),
        labelStyle: const TextStyle(color: Colors.white),
        suffixIcon: Icon(
          suffixIcon,
          color: Colors.white,
        ),
      ),
    );
  }
}
