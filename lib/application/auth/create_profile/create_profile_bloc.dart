import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
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
    on<_onEmitFromAnywhere>((event, emit) {
      emit(event.state);
    });
    on<_UploadProfileToServer>((event, emit) async {
      emit(state.copyWith(isProfilePictureUploading: true));
      final Either<String, String> response =
          await state.authRepository.uploadProfilePicture(file: event.file);
      response.fold((l) {
        add(CreateProfileEvent.emitFromAnywhere(
            state: state.copyWith(
          isProfilePictureUploading: false,
        )));
      }, (r) {
        add(CreateProfileEvent.emitFromAnywhere(
          state: state.copyWith(
            isProfilePictureUploading: false,
            user: state.user!.copyWith(profilePicture: r),
          ),
        ));
      });
    });
    on<_onDonePressed>((event, emit) async {});
  }
}
