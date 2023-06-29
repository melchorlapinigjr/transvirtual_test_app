import 'package:bloc/bloc.dart';
import 'package:transvirtual_app/data/repository/auth/auth_repository.dart';
import 'package:transvirtual_app/data/repository/local_storage/local_storage_repository.dart';
import '../../data/model/user.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this.localStoreRepository, required this.authRepository})
      : super(const AuthState()) {
    on<SignInPressedEvent>(_handleSignIn);
    on<SignInUsernameChangedEvent>(_handleUsernameChanged);
    on<SignInPasswordChangedEvent>(_handlePasswordChanged);
    on<IsAuthenticatedEvent>(_handleIsAuthenticatedEvent);
    on<DestroyUserSession>(_handleDestroyUserSession);
  }

  final LocalStorageRepository localStoreRepository;
  final AuthRepository authRepository;

  void _handleUsernameChanged(
      SignInUsernameChangedEvent event, Emitter emit) async {
    emit(state.copyWith(username: event.username));
  }

  void _handlePasswordChanged(
      SignInPasswordChangedEvent event, Emitter emit) async {
    emit(state.copyWith(password: event.password));
  }

  Future<void> _handleSignIn(SignInPressedEvent event, Emitter emit) async {
    try {
      emit(state.copyWith(status: AuthStatus.loading));
      // sign in the user and get data
      final User? user =
          await authRepository.signIn(state.username, state.password);
      if (user != null) {
        localStoreRepository.setSessionToken(user.jwtToken!);
        localStoreRepository.setUserDetails(user);
        emit(state.copyWith(status: AuthStatus.success, user: user));
      } else {
        emit(state.copyWith(
            message: 'Incorrect username or password.',
            status: AuthStatus.failure));
      }
    } catch (e) {
      emit(state.copyWith(message: e.toString(), status: AuthStatus.failure));
    }
  }

  void _handleIsAuthenticatedEvent(event, emit) async {
    // check if has token already
    final bool isAuthenticated = localStoreRepository.isLoggedIn();
    if (isAuthenticated) {
      final user = localStoreRepository.getUserDetails();
      emit(state.copyWith(isAuthenticated: true, user: user));
    }
  }

  void _handleDestroyUserSession(event, emit) async {
    await localStoreRepository.destroySession();
  }
}
