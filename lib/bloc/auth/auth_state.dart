import 'package:equatable/equatable.dart';
import 'package:transvirtual_app/data/model/user.dart';

class AuthState extends Equatable {
  final String message;
  final AuthStatus status;
  final String username;
  final String password;
  final User? user;
  final bool isAuthenticated;

  const AuthState(
      {this.message = '',
      this.status = AuthStatus.initial,
      this.username = '',
      this.password = '',
      this.isAuthenticated = false,
      this.user});

  AuthState copyWith({
    String? username,
    String? password,
    AuthStatus? status = AuthStatus.initial,
    String? message,
    User? user,
    bool? isAuthenticated,
  }) {
    return AuthState(
      username: username ?? this.username,
      password: password ?? this.password,
      status: status ?? this.status,
      message: message ?? this.message,
      user: user ?? this.user,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
    );
  }

  @override
  List<Object?> get props =>
      [message, status, username, isAuthenticated, password, user];
}

enum AuthStatus {
  success,
  failure,
  initial,
  loading,
  logout
}
