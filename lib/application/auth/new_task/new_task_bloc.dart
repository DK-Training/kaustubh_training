import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/config/app_config.dart';

import '../../../domain/task/task_repository.dart';
import '../../../infrastructure/task/dto/task/task_dto.dart';
import '../../../infrastructure/task/i_task_repository.dart';

part 'new_task_event.dart';
part 'new_task_state.dart';
part 'new_task_bloc.freezed.dart';

class NewTaskBloc extends Bloc<NewTaskEvent, NewTaskState> {
  NewTaskBloc(NewTaskState initState) : super((initState)) {
    on<_onEmitFromAnywhere>((event, emit) {
      emit(event.state);
    });

    on<_onAddTaskPressed>((event, emit) async {
      // debugPrint('Login user');
      emit(state.copyWith(isLoading: true));

      final String title = state.titleController.text;
      final String description = state.descriptionController.text;
      // // print(email);
      final Either<String, TaskDto> response = await state.taskRepository
          .addTask(title: title, description: description);
      response.fold(
        (l) {
          add(NewTaskEvent.emitFromAnywhere(
              state: state.copyWith(
                  isLoading: false,
                  isSuccessful: false,
                  isFailed: true,
                  errorMessage: l)));
        },
        (r) {
          add(NewTaskEvent.emitFromAnywhere(
              state: state.copyWith(
                  // user: r,
                  isLoading: false,
                  isSuccessful: true,
                  isFailed: false)));
        },
      );
    });
  }
}
