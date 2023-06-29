import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transvirtual_app/bloc/auth/auth_bloc.dart';
import 'package:transvirtual_app/bloc/auth/auth_event.dart';
import 'package:transvirtual_app/presentation/dashboard/dashboard.dart';
import 'package:transvirtual_app/utils/ui_helpers.dart';

import '../../bloc/auth/auth_state.dart';
import '../widgets/widgets.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final authBloc = BlocProvider.of<AuthBloc>(context);
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
              child: Overlay(initialEntries: [
                OverlayEntry(
                  builder: (context) => Column(
                    children: [
                      const _UserNameInput(),
                      verticalSpaceMedium,
                      const _PasswordInput(),
                      verticalSpaceLarge,
                      BlocConsumer(
                        bloc: authBloc,
                        listener: (context, AuthState state) {
                          if (state.status == AuthStatus.success) {
                            CustomSnackBar.showSnackBar(
                                context, 'Login successful!');
                            Navigator.of(context)
                                .push(Dashboard.route(state.user!));
                          }
                        },
                        builder: (context, AuthState state) {
                          return MyButton(
                              label: 'Login',
                              onPressed: () =>
                                  authBloc..add(const SignInPressedEvent()),
                              isLoading: state.status == AuthStatus.loading);
                        },
                      ),
                    ],
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class _PasswordInput extends StatelessWidget {
  const _PasswordInput();

  @override
  Widget build(BuildContext context) {
    return MyInputField(
      label: 'Password',
      key: const Key('password_input'),
      suffixIcon: Icons.lock,
      onChanged: (value) => BlocProvider.of<AuthBloc>(context)
          .add(SignInPasswordChangedEvent(password: value)),
    );
  }
}

class _UserNameInput extends StatelessWidget {
  const _UserNameInput();

  @override
  Widget build(BuildContext context) {
    return MyInputField(
      label: 'Username',
      key: const Key('username_input'),
      suffixIcon: Icons.email_outlined,
      onChanged: (value) => BlocProvider.of<AuthBloc>(context)
          .add(SignInUsernameChangedEvent(username: value)),
    );
  }
}
