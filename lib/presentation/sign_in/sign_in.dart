import 'package:flutter/material.dart';
import 'package:transvirtual_app/utils/ui_helpers.dart';

import '../widgets/widgets.dart';
import '../widgets/company_logo.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      child: Container(
        height: MediaQuery.sizeOf(context).height,
        padding: const EdgeInsets.all(24),
        color: Theme.of(context).colorScheme.tertiaryContainer,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CompanyLogo(),
            SizedBox(
              height: 320,
              child: Column(
                children: [
                  const MyInputField(
                    label: 'Username',
                    suffixIcon: Icons.email_outlined,
                  ),
                  verticalSpaceMedium,
                  const MyInputField(
                    label: 'Password',
                    suffixIcon: Icons.lock,
                  ),
                  verticalSpaceLarge,
                  MyButton(
                    label: 'Login',
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
