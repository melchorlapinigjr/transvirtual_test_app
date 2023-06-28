import 'package:flutter/material.dart';
import 'package:transvirtual_app/presentation/widgets/my_scaffold.dart';
import 'package:transvirtual_app/presentation/widgets/widgets.dart';


class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      child: Container(
        padding: const EdgeInsets.all(24),
        color: Theme.of(context).colorScheme.tertiaryContainer,
        child: const Column(
          children: [

          ],
        ),
      ),
    );
  }
}
