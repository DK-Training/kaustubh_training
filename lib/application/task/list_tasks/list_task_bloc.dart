import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/core/config/app_config.dart';

import '../../../domain/task/task_repository.dart';
import '../../../infrastructure/task/dto/task/task_dto.dart';
import '../../../infrastructure/task/i_task_repository.dart';

part 'list_task_event.dart';
part 'list_task_state.dart';
part 'list_task_bloc.freezed.dart';

class ListTaskBloc extends Bloc<ListTaskEvent, ListTaskState> {
  ListTaskBloc(ListTaskState initState) : super((initState)) {
    on<_onEmitFromAnywhere>((event, emit) {
      emit(event.state);
    });

    on<_GetAllTasks>((event, emit) async {
      final tasks = await state.taskRepository.getAllTask();
      emit(state.copyWith(tasks: tasks));
    });
    on<_DeleteTask>((event, emit) async {
      final response =
          await state.taskRepository.deleteTask(taskId: event.taskId);
      response.fold(
          (l) => {
                add(ListTaskEvent.emitFromAnywhere(
                    state: state.copyWith(
                  isFailed: true,
                ))),
              }, (r) {
        add(const ListTaskEvent.getAllTasks());
      });
    });
    on<_UpdateTask>((event, emit) async {
      final response = await state.taskRepository.updateTask(task: event.task);
      response.fold(
          (l) => {
                add(ListTaskEvent.emitFromAnywhere(
                    state: state.copyWith(
                  isFailed: true,
                ))),
              }, (r) {
        add(const ListTaskEvent.getAllTasks());
      });
    });
  }
}
