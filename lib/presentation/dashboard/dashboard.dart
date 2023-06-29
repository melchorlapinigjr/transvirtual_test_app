import 'package:flutter/material.dart';
import 'package:transvirtual_app/presentation/dashboard/components/footer.dart';
import 'package:transvirtual_app/presentation/widgets/widgets.dart';
import 'package:transvirtual_app/utils/ui_helpers.dart';

import '../../data/model/user.dart';
import 'components/buttons.dart';
import 'components/header.dart';
import 'components/user_details.dart';

class Dashboard extends StatelessWidget {
  final User user;

  const Dashboard({super.key, required this.user});

  static Route<String> route(User user) {
    return MaterialPageRoute(
        builder: (_) => Dashboard(
              user: user,
            ));
  }

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
        child: Column(
          children: [
            const Header(),
            verticalSpaceMedium,
            const BodyButtons(),
            verticalSpaceMedium,
            UserDetails(
              user: user,
            ),
            verticalSpaceMedium,
            const BodyFooter(),
            verticalSpaceMedium,
          ],
        ),
      ),
    );
  }
}
