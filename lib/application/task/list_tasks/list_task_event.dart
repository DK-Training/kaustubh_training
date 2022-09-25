part of 'list_task_bloc.dart';

@freezed
class ListTaskEvent with _$ListTaskEvent {
  const factory ListTaskEvent.getAllTasks() = _GetAllTasks;
  const factory ListTaskEvent.deleteTask({required String taskId}) =
      _DeleteTask;

  const factory ListTaskEvent.emitFromAnywhere({required ListTaskState state}) =
      _onEmitFromAnywhere;
}
