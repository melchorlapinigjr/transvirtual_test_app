import 'package:go_router/go_router.dart';
import 'package:transvirtual_app/data/model/user.dart';
import 'package:transvirtual_app/presentation/dashboard/dashboard.dart';
import 'package:transvirtual_app/presentation/sign_in/sign_in.dart';

class Routes {
  static late GoRouter router;

  static init() {
    router = GoRouter(
      routes: [
        GoRoute(
          path: '/sign-in',
          name: 'sign-in',
          builder: (context, state) => const SignIn(),
        ),
        GoRoute(
          path: '/',
          name: 'dashboard',
          builder: (context, state) => Dashboard(
            user: state.extra as User,
          ),
        ),
      ],
    );
  }
}
