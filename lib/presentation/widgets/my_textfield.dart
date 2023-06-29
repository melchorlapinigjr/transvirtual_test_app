import 'package:flutter/material.dart';

import '../../enums/title_types.dart';
import 'widgets.dart';

class MyInputField extends StatelessWidget {
  final String label;
  final IconData suffixIcon;
  final ValueChanged<String> onChanged;
  final bool? isObscureText;

  const MyInputField(
      {super.key,
      required this.label,
      required this.suffixIcon,
      required this.onChanged,
      this.isObscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: Key('${label}keyInput'),
      obscureText: isObscureText!,
      controller: TextEditingController(),
      onChanged: (value) {
        onChanged.call(value);
      },
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
