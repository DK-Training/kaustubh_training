part of 'new_task_bloc.dart';

@freezed
class NewTaskState with _$NewTaskState {
  const factory NewTaskState({
    required bool isLoading,
    required bool isSuccessful,
    required bool isFailed,
    required String errorMessage,
    required GlobalKey<FormState> formKey,
    required AppStateNotifier appStateNotifier,
    required TextEditingController titleController,
    required TextEditingController descriptionController,
    required TaskRepository taskRepository,
    TaskDto? user,
  }) = _NewTaskState;

  factory NewTaskState.initial({
    required AppStateNotifier appStateNotifier,
  }) =>
      NewTaskState(
        taskRepository: ITaskRepository(),
        errorMessage: '',
        formKey: GlobalKey<FormState>(),
        isLoading: false,
        isSuccessful: false,
        isFailed: false,
        appStateNotifier: appStateNotifier,
        titleController: TextEditingController(),
        descriptionController: TextEditingController(),
      );
}
