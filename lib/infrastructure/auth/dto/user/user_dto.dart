import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  factory UserDto({
    required String id,
    required String email,
    String? firstName,
    String? lastName,
    String? mobileNumber,
    String? reference,
    String? profilePicture,
    required bool isProfileCompleted,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}
