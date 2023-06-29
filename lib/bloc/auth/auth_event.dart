import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class SignInPressedEvent extends AuthEvent {
  const SignInPressedEvent();
}

class SignInUsernameChangedEvent extends AuthEvent {
  const SignInUsernameChangedEvent({required this.username});

  final String username;

  @override
  List<Object> get props => [username];
}

class SignInPasswordChangedEvent extends AuthEvent {
  const SignInPasswordChangedEvent({required this.password});

  final String password;

  @override
  List<Object> get props => [password];
}

class IsAuthenticatedEvent extends AuthEvent {
  const IsAuthenticatedEvent();

  @override
  List<Object> get props => [];
}

class DestroyUserSession extends AuthEvent {
  const DestroyUserSession();

  @override
  List<Object> get props => [];
}

