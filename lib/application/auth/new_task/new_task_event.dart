part of 'new_task_bloc.dart';

@freezed
class NewTaskEvent with _$NewTaskEvent {
  const factory NewTaskEvent.onAddTaskPressed() = _onAddTaskPressed;
  const factory NewTaskEvent.emitFromAnywhere({required NewTaskState state}) =
      _onEmitFromAnywhere;
}
