
import 'package:flutter/material.dart';
import 'package:transvirtual_app/core/services/connection_helper.dart';
import 'package:transvirtual_app/data/model/user.dart';
import 'package:transvirtual_app/enums/label_sizes.dart';
import 'package:transvirtual_app/presentation/widgets/my_label.dart';

class UserDetails extends StatelessWidget {
  final User user;

  const UserDetails({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.blue.shade100,
            blurRadius: 2.0,
            offset: const Offset(2, 2))
      ]),
      child: StreamBuilder<String>(
          stream: ConnectionTypeHelper().getConnectionUpdateStream(),
          initialData: 'Connectivity',
          builder: (context, snapshot) {
            return Column(
              children: [
                DetailsItem(
                    label: 'TransVirtual #',
                    value: user.transVirtualNumber ?? '0000'),
                DetailsItem(
                    label: 'Company', value: user.currentClientName ?? 'N/A'),
                DetailsItem(
                    label: 'Warehouse',
                    value: user.warehouseTitle ?? 'N/A'),
                DetailsItem(
                    label: 'Login ', value: user.currentUserShortName ?? 'N/A'),
                DetailsItem(
                    label: 'Status', value: 'Connected via ${snapshot.data}'),
              ],
            );
          }),
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
              width: 128,
              color: Colors.blue.withOpacity(.1),
              padding: const EdgeInsets.all(16),
              child: MyLabel(
                title: label,
                maxLines: 2,
                textAlign: TextAlign.left,
                type: LabelSizes.medium,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              alignment: Alignment.topLeft,
              child: MyLabel(
                title: value,
                type: LabelSizes.medium,
                maxLines: 3,
              ),
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
