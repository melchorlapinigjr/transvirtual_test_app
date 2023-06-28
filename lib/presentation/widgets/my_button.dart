import 'package:flutter/material.dart';

import '../../enums/title_types.dart';
import 'widgets.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final Color? color;
  final double? borderRadius;
  final IconData? leadingIcon;

  const MyButton(
      {super.key,
      required this.onPressed,
      required this.label,
      this.color,
      this.borderRadius,
      this.leadingIcon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        backgroundColor: color ?? Colors.orange,
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            leadingIcon != null
                ? Icon(
                    leadingIcon,
                    color: color ?? Colors.white,
                    size: 32,
                  )
                : const SizedBox(),
            SizedBox(width: leadingIcon != null ? 16 : 0),
            MyLabel(
              title: label,
              type: TitleTypes.large,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
