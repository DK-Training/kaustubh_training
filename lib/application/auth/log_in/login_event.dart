part of 'login_bloc.dart';

@freezed
class LogInEvent with _$LogInEvent {
  const factory LogInEvent.onLogInPressed() = _onLogInPressed;
  const factory LogInEvent.emitFromAnywhere({required LogInState state}) =
      _onEmitFromAnywhere;
}
