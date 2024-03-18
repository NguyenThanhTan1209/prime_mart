abstract class AuthenticationEvent {}

class LogInEvent extends AuthenticationEvent {
  LogInEvent({required this.email, required this.password});

  final String email;
  final String password;
}

class SignUpEvent extends AuthenticationEvent {
  SignUpEvent({required this.email, required this.password});

  final String email;
  final String password;
}
