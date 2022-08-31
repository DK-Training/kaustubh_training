part of 'signup_bloc.dart';

@freezed
class SignupEvent with _$SignupEvent {
  const factory SignupEvent.onRegisterPressed() = _OnRegisterPressed;
  const factory SignupEvent.emitFromAnywhere({required SignupState state}) =
      _EmitFromAnywhere;
}
