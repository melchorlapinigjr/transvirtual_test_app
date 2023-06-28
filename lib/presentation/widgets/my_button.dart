import 'package:flutter/material.dart';

import '../../enums/title_types.dart';
import 'widgets.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Color? color;

  const MyButton(
      {super.key, required this.onPressed, required this.label, this.color});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all<Size>(const Size.fromHeight(50)),
        backgroundColor:
            MaterialStateProperty.all<Color>(color ?? Colors.orange),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: MyLabel(
          title: label,
          type: TitleTypes.large,
          color: Colors.white,
        ),
      ),
    );
  }
}
