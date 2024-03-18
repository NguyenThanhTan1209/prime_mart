import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repository/authentication_repository.dart';
import 'authentication_event.dart';
import 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {

  AuthenticationBloc() : super(AuthenticationInitialState()) {
    on<SignUpEvent>(
        (SignUpEvent event, Emitter<AuthenticationState> emit) async {
      emit(AuthenticationInProgressState());
      try {
        final User? result = await _repository.signUpWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );
        emit(AuthenticationSuccessState(user: result!));
      } catch (e) {
        emit(AuthenticationFailedState(errorMessage: e.toString()));
      }
    });
    on<LogInEvent>(
        (LogInEvent event, Emitter<AuthenticationState> emit) async {
      emit(AuthenticationInProgressState());
      try {
        final User? result = await _repository.signInWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );
        emit(AuthenticationSuccessState(user: result!));
      } catch (e) {
        emit(AuthenticationFailedState(errorMessage: e.toString()));
      }
    });
  }
  
  final AuthenticationRepository _repository = AuthenticationRepository();
}
