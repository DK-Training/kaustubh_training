part of 'log_in_bloc.dart';

@freezed
class LogInEvent with _$LogInEvent {
  const factory LogInEvent.onLogInPressed() = _OnLogInPressed;
  const factory LogInEvent.emitFromAnyWhere({required LogInState state}) =
      _EmitFromAnyWhere;
}
