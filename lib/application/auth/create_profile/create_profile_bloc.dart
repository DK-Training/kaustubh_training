import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/auth_repository.dart';
import '../../../domain/core/config/app_config.dart';
import '../../../infrastructure/auth/dto/user/user_dto.dart';
import '../../../infrastructure/auth/i_auth_repository.dart';

part 'create_profile_event.dart';
part 'create_profile_state.dart';
part 'create_profile_bloc.freezed.dart';

class CreateProfileBloc extends Bloc<CreateProfileEvent, CreateProfileState> {
  CreateProfileBloc(CreateProfileState initState) : super((initState)) {
    on<CreateProfileEvent>((event, emit) {
      on<_onEmitFromAnywhere>((event, emit) {
        emit(event.state);
      });
      on<_onDonePressed>((event, emit) async {
        //   debugPrint('register user');
        //   emit(state.copyWith(
        //       isLoading: true, isFailed: false, isSuccessful: false));
        //    final String email = state.userEmailController.text;
        //   final String firstName = state.firstNameController.text;
        //   final String lastName = state.lastNameController.text;
        //   final String reference = state.referenceController.text;
        //   final String mobileNumber = state.mobileNumberController.text;
        //   final UserDto newUser =
        //       UserDto(id: '', email: email, isProfileCompleted: false, firstName: firstName);
        //   final Either<String, UserDto> response = await state.authRepository
        //       (tempUser: newUser, password: password);
        //   response.fold(
        //     (l) {
        //       add(CreateProfileEvent.emitFromAnywhere(
        //           state: state.copyWith(
        //               isLoading: false,
        //               isSuccessful: false,
        //               isFailed: true,
        //               errorMessage: l)));
        //     },
        //     (r) {
        //       add(CreateProfileEvent.emitFromAnywhere(
        //           state: state.copyWith(
        //               user: r,
        //               isLoading: false,
        //               isSuccessful: true,
        //               isFailed: false)));
        //     },
        //   );
      });
    });
  }
}
