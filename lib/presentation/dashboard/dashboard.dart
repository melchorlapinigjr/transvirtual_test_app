import 'package:flutter/material.dart';
import 'package:transvirtual_app/presentation/widgets/widgets.dart';
import 'package:transvirtual_app/utils/ui_helpers.dart';

import 'components/buttons.dart';
import 'components/header.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        shadowColor: Colors.black,
        elevation: 4,
        title: const CompanyLogo(
          isSmall: true,
          color: Colors.blue,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(24),
        child: const Column(
          children: [
            Header(),
            verticalSpaceMedium,
            BodyButtons(),
          ],
        ),
      ),
    );
  }
}
