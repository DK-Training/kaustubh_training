// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskDto _$TaskDtoFromJson(Map<String, dynamic> json) {
  return _TaskDto.fromJson(json);
}

/// @nodoc
class _$TaskDtoTearOff {
  const _$TaskDtoTearOff();

  _TaskDto call(
      {required String id,
      required String description,
      required String title,
      required String userId}) {
    return _TaskDto(
      id: id,
      description: description,
      title: title,
      userId: userId,
    );
  }

  TaskDto fromJson(Map<String, Object?> json) {
    return TaskDto.fromJson(json);
  }
}

/// @nodoc
const $TaskDto = _$TaskDtoTearOff();

/// @nodoc
mixin _$TaskDto {
  String get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskDtoCopyWith<TaskDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDtoCopyWith<$Res> {
  factory $TaskDtoCopyWith(TaskDto value, $Res Function(TaskDto) then) =
      _$TaskDtoCopyWithImpl<$Res>;
  $Res call({String id, String description, String title, String userId});
}

/// @nodoc
class _$TaskDtoCopyWithImpl<$Res> implements $TaskDtoCopyWith<$Res> {
  _$TaskDtoCopyWithImpl(this._value, this._then);

  final TaskDto _value;
  // ignore: unused_field
  final $Res Function(TaskDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? title = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$TaskDtoCopyWith<$Res> implements $TaskDtoCopyWith<$Res> {
  factory _$TaskDtoCopyWith(_TaskDto value, $Res Function(_TaskDto) then) =
      __$TaskDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String description, String title, String userId});
}

/// @nodoc
class __$TaskDtoCopyWithImpl<$Res> extends _$TaskDtoCopyWithImpl<$Res>
    implements _$TaskDtoCopyWith<$Res> {
  __$TaskDtoCopyWithImpl(_TaskDto _value, $Res Function(_TaskDto) _then)
      : super(_value, (v) => _then(v as _TaskDto));

  @override
  _TaskDto get _value => super._value as _TaskDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? title = freezed,
    Object? userId = freezed,
  }) {
    return _then(_TaskDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskDto implements _TaskDto {
  _$_TaskDto(
      {required this.id,
      required this.description,
      required this.title,
      required this.userId});

  factory _$_TaskDto.fromJson(Map<String, dynamic> json) =>
      _$$_TaskDtoFromJson(json);

  @override
  final String id;
  @override
  final String description;
  @override
  final String title;
  @override
  final String userId;

  @override
  String toString() {
    return 'TaskDto(id: $id, description: $description, title: $title, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TaskDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$TaskDtoCopyWith<_TaskDto> get copyWith =>
      __$TaskDtoCopyWithImpl<_TaskDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskDtoToJson(this);
  }
}

abstract class _TaskDto implements TaskDto {
  factory _TaskDto(
      {required String id,
      required String description,
      required String title,
      required String userId}) = _$_TaskDto;

  factory _TaskDto.fromJson(Map<String, dynamic> json) = _$_TaskDto.fromJson;

  @override
  String get id;
  @override
  String get description;
  @override
  String get title;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$TaskDtoCopyWith<_TaskDto> get copyWith =>
      throw _privateConstructorUsedError;
}
