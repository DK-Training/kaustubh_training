import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kaustubh_training/infrastructure/auth/dto/user/user_dto.dart';

import '../../../domain/auth/auth_repository.dart';
import '../../../domain/core/config/app_config.dart';
import '../../../infrastructure/auth/dto/user/user_dto.dart';

import '../../../infrastructure/auth/i_auth_repository.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  SignUpBloc(SignUpState initState) : super(initState) {
    on<_EmitFromAnyWhere>((event, emit) {
      emit(event.state);
    });

    on<_OnRegisterPressed>((event, emit) async {
      debugPrint('register user');
      emit(state.copyWith(
          isLoading: true, isFailed: false, isSuccessful: false));
      final String email = state.userEmailController.text;
      final String fullName = state.fullNameController.text;
      final String password = state.passwordController.text;
      final String age = state.ageController.text;

      final UserDto newUser = UserDto(
          id: '',
          email: email,
          fullName: fullName,
          age: age.isEmpty ? null : int.tryParse(age));
      final Either<String, UserDto> response = await state.authRepository
          .register(tempUser: newUser, password: password);
      response.fold(
        (l) {
          add(SignUpEvent.emitFromAnyWhere(
              state: state.copyWith(
                  isLoading: false,
                  isSuccessful: false,
                  isFailed: true,
                  errorMessage: l)));
        },
        (r) {
          add(SignUpEvent.emitFromAnyWhere(
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
