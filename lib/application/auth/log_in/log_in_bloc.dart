import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/config/app_config.dart';

part 'log_in_event.dart';
part 'log_in_state.dart';
part 'log_in_bloc.freezed.dart';

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  LogInBloc(LogInState InitState) : super((InitState)) {
    on<_EmitFromAnyWhere>((event, emit) {
      emit(event.state);
    });

    on<_OnLogInPressed>((event, emit) {
      debugPrint('Login user');
      emit(state.copyWith(isLoading: true));

      Future.delayed(const Duration(seconds: 5), () {
        add(LogInEvent.emitFromAnyWhere(
            state: state.copyWith(
                isLoading: false,
                isSuccessful: false,
                isFailed: true,
                errorMessage: 'login failed')));
      });
    });
  }
}
