import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/auth_repository.dart';
import '../../../domain/core/config/app_config.dart';
import '../../../infrastructure/auth/i_auth_repository.dart';

part 'log_in_event.dart';
part 'log_in_state.dart';
part 'log_in_bloc.freezed.dart';

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  LogInBloc(LogInState InitState) : super((InitState)) {
    on<_EmitFromAnyWhere>((event, emit) {
      emit(event.state);
    });

    on<_OnLogInPressed>((event, emit) async {
      debugPrint('Login user');
      emit(state.copyWith(isLoading: true));
      final String email = state.userEmailController.text;
      final String password = state.passwordController.text;
      // print(email);
      final bool response =
          await state.authRepository.login(email: email, password: password);
      add(LogInEvent.emitFromAnyWhere(
          state: state.copyWith(
              isLoading: false,
              isSuccessful: response,
              isFailed: !response,
              errorMessage: 'login failed')));
    });
  }
}
