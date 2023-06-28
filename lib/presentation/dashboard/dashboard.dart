import 'package:flutter/material.dart';
import 'package:transvirtual_app/presentation/widgets/my_scaffold.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyScaffold(
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                Icons.sports_baseball,
                color: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }
}
