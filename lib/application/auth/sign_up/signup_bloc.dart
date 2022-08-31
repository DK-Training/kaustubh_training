import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/auth_repository.dart';
import '../../../domain/core/config/app_config.dart';
import '../../../infrastructure/auth/dto/user/user_dto.dart';
import '../../../infrastructure/auth/i_auth_repository.dart';

part 'signup_event.dart';
part 'signup_state.dart';
part 'signup_bloc.freezed.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc(SignupState initState) : super(initState) {
    on<_EmitFromAnywhere>((event, emit) {
      emit(event.state);
    });
    on<_OnRegisterPressed>((event, emit) async {
      debugPrint('register user');
      emit(state.copyWith(
          isLoading: true, isFailed: false, isSuccessful: false));
      final String email = state.userEmailController.text;
      final String password = state.passwordController.text;
      final UserDto newUser =
          UserDto(id: '', email: email, isProfileCompleted: false);
      final Either<String, UserDto> response = await state.authRepository
          .register(tempUser: newUser, password: password);
      response.fold(
        (l) {
          add(SignupEvent.emitFromAnywhere(
              state: state.copyWith(
                  isLoading: false,
                  isSuccessful: false,
                  isFailed: true,
                  errorMessage: l)));
        },
        (r) {
          add(SignupEvent.emitFromAnywhere(
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
