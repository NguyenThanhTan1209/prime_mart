import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthenticationState {}

class AuthenticationInitialState extends AuthenticationState {}

class AuthenticationInProgressState extends AuthenticationState {}

class AuthenticationSuccessState extends AuthenticationState {
  AuthenticationSuccessState({required this.user});

  final User user;
}

class AuthenticationFailedState extends AuthenticationState {
  AuthenticationFailedState({required this.errorMessage});

  final String errorMessage;
}
