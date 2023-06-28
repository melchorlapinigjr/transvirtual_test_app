import 'package:flutter/material.dart';
import 'package:transvirtual_app/enums/title_types.dart';
import 'package:transvirtual_app/presentation/widgets/my_label.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:   BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.blue.shade100, blurRadius: 2.0, offset: const Offset(2, 2))
      ]),
      child: const Column(
        children: [
          DetailsItem(label: 'TransVirtual #', value: '2323423'),
          DetailsItem(label: 'Company', value: '2323423'),
          DetailsItem(label: 'Warehouse', value: '2323423'),
          DetailsItem(label: 'Login ', value: '2323423'),
          DetailsItem(label: 'Status', value: '2323423'),
        ],
      ),
    );
  }
}

class DetailsItem extends StatelessWidget {
  final String label;
  final String value;

  const DetailsItem({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 136,
              alignment: Alignment.topLeft,
              color: Colors.blue.withOpacity(.1),
              padding: const EdgeInsets.all(16),
              child: MyLabel(
                title: label,
                maxLines: 2,
                textAlign: TextAlign.left,
                type: TitleTypes.medium,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              alignment: Alignment.topLeft,
              child: MyLabel(title: value, type: TitleTypes.medium),
            ),
          ],
        ),
        Divider(
          color: Colors.blue.withOpacity(.2),
          height: 1,
        ),
      ],
    );
  }
}
