import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/auth_repository.dart';
import '../../../domain/core/config/app_config.dart';
import '../../../infrastructure/auth/i_auth_repository.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  LogInBloc(LogInState initState) : super((initState)) {
    on<LogInEvent>((event, emit) {
      on<_onEmitFromAnywhere>(
        (event, emit) {
          emit(event.state);
        },
      );
      on<_onLogInPressed>((event, emit) {
        debugPrint('Login user');
        emit(state.copyWith(isLoading: true));

        Future.delayed(const Duration(seconds: 5), () {
          add(LogInEvent.emitFromAnywhere(
              state: state.copyWith(
            isLoading: false,
            isSuccessful: true,
            isFailed: false,
          )));
        });
      });
    });
  }
}
