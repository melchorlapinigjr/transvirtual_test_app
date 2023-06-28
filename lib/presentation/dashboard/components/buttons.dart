import 'package:flutter/material.dart';
import 'package:transvirtual_app/presentation/widgets/widgets.dart';
import 'package:transvirtual_app/utils/ui_helpers.dart';

class BodyButtons extends StatelessWidget {
  const BodyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        MyButton(
            onPressed: () => debugPrint('Search...'),
            leadingIcon: Icons.search,
            label: 'Search'),
        verticalSpaceMedium,
        MyButton(
            onPressed: () => debugPrint('Movements...'),
            leadingIcon: Icons.add_shopping_cart,
            label: 'Movements'),
        verticalSpaceMedium,
        MyButton(
            onPressed: () => debugPrint('Stock Take...'),
            leadingIcon: Icons.list_alt,
            label: 'Stock Take'),
        verticalSpaceMedium,
      ],
    );
  }
}
