part of 'create_profile_bloc.dart';

@freezed
class CreateProfileEvent with _$CreateProfileEvent {
  const factory CreateProfileEvent.onDonePressed() = _onDonePressed;
  const factory CreateProfileEvent.emitFromAnywhere(
      {required CreateProfileState state}) = _onEmitFromAnywhere;
}
