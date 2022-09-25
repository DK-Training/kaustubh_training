part of 'list_task_bloc.dart';

@freezed
class ListTaskState with _$ListTaskState {
  const factory ListTaskState({
    required bool isLoading,
    required bool isSuccessful,
    required bool isFailed,
    required AppStateNotifier appStateNotifier,
    required TaskRepository taskRepository,
    required List<TaskDto> tasks,
  }) = _ListTaskState;

  factory ListTaskState.initial({
    required AppStateNotifier appStateNotifier,
  }) =>
      ListTaskState(
        taskRepository: ITaskRepository(),
        isLoading: false,
        isSuccessful: false,
        isFailed: false,
        appStateNotifier: appStateNotifier,
        tasks: []
      );
}
