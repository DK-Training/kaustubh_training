import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/config/app_config.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(SignUpState initState) : super(initState) {
    on<_EmitFromAnyWhere>((event, emit) {
      emit(event.state);
    });

    on<_OnRegisterPressed>((event, emit) {
      debugPrint('register user');
      emit(state.copyWith(isLoading: true));
      // 
      //UserDto 
      //register //
      Future.delayed(const Duration(seconds: 5), () {
        add(SignUpEvent.emitFromAnyWhere(
            state: state.copyWith(
                isLoading: false,
                isSuccessful: true,
                isFailed: false,
                errorMessage: '')));
      });
    });
  }
}
