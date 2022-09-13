// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      id: json['id'] as String,
      email: json['email'] as String,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      mobileNumber: json['mobileNumber'] as String?,
      reference: json['reference'] as String?,
      profilePicture: json['profilePicture'] as String?,
      isProfileCompleted: json['isProfileCompleted'] as bool,
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'mobileNumber': instance.mobileNumber,
      'reference': instance.reference,
      'profilePicture': instance.profilePicture,
      'isProfileCompleted': instance.isProfileCompleted,
    };
