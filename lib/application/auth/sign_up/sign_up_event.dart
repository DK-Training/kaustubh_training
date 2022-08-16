part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.onRegisterPressed() = _OnRegisterPressed;
  const factory SignUpEvent.emitFromAnyWhere({required SignUpState state}) =
      _EmitFromAnyWhere;
}
