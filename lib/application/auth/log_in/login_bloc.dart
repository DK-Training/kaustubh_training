import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/auth_repository.dart';
import '../../../domain/core/config/app_config.dart';
import '../../../infrastructure/auth/dto/user/user_dto.dart';
import '../../../infrastructure/auth/i_auth_repository.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  LogInBloc(LogInState initState) : super((initState)) {
    on<_onEmitFromAnywhere>((event, emit) {
      emit(event.state);
    });

    on<_onLogInPressed>((event, emit) async {
      debugPrint('Login user');
      emit(state.copyWith(isLoading: true));

      final String email = state.userEmailController.text;
      final String password = state.passwordController.text;
      // print(email);
      final Either<String, UserDto> response =
          await state.authRepository.login(email: email, password: password);
      response.fold(
        (l) {
          add(LogInEvent.emitFromAnywhere(
              state: state.copyWith(
                  isLoading: false,
                  isSuccessful: false,
                  isFailed: true,
                  errorMessage: l)));
        },
        (r) {
          add(LogInEvent.emitFromAnywhere(
              state: state.copyWith(
                  user: r,
                  isLoading: false,
                  isSuccessful: true,
                  isFailed: false)));
        },
      );
    });
  }
}
