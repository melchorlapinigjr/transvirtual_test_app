import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:transvirtual_app/bloc/auth/auth_event.dart';
import 'package:transvirtual_app/core/network/dio_helper.dart';
import 'package:transvirtual_app/core/services/connection_helper.dart';
import 'package:transvirtual_app/core/services/shared_preference_helper.dart';
import 'package:transvirtual_app/data/repository/auth/auth_repository.dart';
import 'package:transvirtual_app/presentation/dashboard/dashboard.dart';
import 'package:transvirtual_app/presentation/sign_in/sign_in.dart';
import 'package:transvirtual_app/presentation/widgets/widgets.dart';

import 'bloc/auth/auth_bloc.dart';
import 'bloc/auth/auth_state.dart';
import 'data/repository/local_storage/local_storage_repository.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  await SharedPreferenceHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AuthBloc authBloc;

  @override
  void initState() {
    authBloc = AuthBloc(
        localStoreRepository: LocalStorageRepository(),
        authRepository: AuthRepository());
    authBloc.add(const IsAuthenticatedEvent());

    super.initState();
  }

  @override
  void dispose() {
    ConnectionTypeHelper().dispose();
    super.dispose();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final navigatorKey = GlobalKey<NavigatorState>();
    return MaterialApp(
        navigatorKey: navigatorKey,
        title: 'TransVirtual',
        debugShowCheckedModeBanner: false,
        //routerConfig: _router,
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: Theme.of(context).colorScheme.copyWith(
              tertiaryContainer: Colors.lightBlue, background: Colors.white),
        ),
        home: BlocProvider(
            create: (context) => authBloc,
            child: BlocConsumer(
              bloc: authBloc,
              listener: (context, AuthState state) {
                if (state.status == AuthStatus.failure) {
                  CustomSnackBar.showSnackBar(context, state.message);
                  return;
                }
              },
              builder: (BuildContext context, AuthState state) {
                if (state.isAuthenticated) {
                  return Dashboard(user: state.user!);
                }
                return const SignIn();
              },
            )));
  }
}
