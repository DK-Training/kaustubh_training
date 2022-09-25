// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'new_task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewTaskEventTearOff {
  const _$NewTaskEventTearOff();

  _onAddTaskPressed onAddTaskPressed() {
    return const _onAddTaskPressed();
  }

  _onEmitFromAnywhere emitFromAnywhere({required NewTaskState state}) {
    return _onEmitFromAnywhere(
      state: state,
    );
  }
}

/// @nodoc
const $NewTaskEvent = _$NewTaskEventTearOff();

/// @nodoc
mixin _$NewTaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAddTaskPressed,
    required TResult Function(NewTaskState state) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onAddTaskPressed,
    TResult Function(NewTaskState state)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAddTaskPressed,
    TResult Function(NewTaskState state)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onAddTaskPressed value) onAddTaskPressed,
    required TResult Function(_onEmitFromAnywhere value) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_onAddTaskPressed value)? onAddTaskPressed,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onAddTaskPressed value)? onAddTaskPressed,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewTaskEventCopyWith<$Res> {
  factory $NewTaskEventCopyWith(
          NewTaskEvent value, $Res Function(NewTaskEvent) then) =
      _$NewTaskEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NewTaskEventCopyWithImpl<$Res> implements $NewTaskEventCopyWith<$Res> {
  _$NewTaskEventCopyWithImpl(this._value, this._then);

  final NewTaskEvent _value;
  // ignore: unused_field
  final $Res Function(NewTaskEvent) _then;
}

/// @nodoc
abstract class _$onAddTaskPressedCopyWith<$Res> {
  factory _$onAddTaskPressedCopyWith(
          _onAddTaskPressed value, $Res Function(_onAddTaskPressed) then) =
      __$onAddTaskPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$onAddTaskPressedCopyWithImpl<$Res>
    extends _$NewTaskEventCopyWithImpl<$Res>
    implements _$onAddTaskPressedCopyWith<$Res> {
  __$onAddTaskPressedCopyWithImpl(
      _onAddTaskPressed _value, $Res Function(_onAddTaskPressed) _then)
      : super(_value, (v) => _then(v as _onAddTaskPressed));

  @override
  _onAddTaskPressed get _value => super._value as _onAddTaskPressed;
}

/// @nodoc

class _$_onAddTaskPressed implements _onAddTaskPressed {
  const _$_onAddTaskPressed();

  @override
  String toString() {
    return 'NewTaskEvent.onAddTaskPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _onAddTaskPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAddTaskPressed,
    required TResult Function(NewTaskState state) emitFromAnywhere,
  }) {
    return onAddTaskPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onAddTaskPressed,
    TResult Function(NewTaskState state)? emitFromAnywhere,
  }) {
    return onAddTaskPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAddTaskPressed,
    TResult Function(NewTaskState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onAddTaskPressed != null) {
      return onAddTaskPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onAddTaskPressed value) onAddTaskPressed,
    required TResult Function(_onEmitFromAnywhere value) emitFromAnywhere,
  }) {
    return onAddTaskPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_onAddTaskPressed value)? onAddTaskPressed,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return onAddTaskPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onAddTaskPressed value)? onAddTaskPressed,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onAddTaskPressed != null) {
      return onAddTaskPressed(this);
    }
    return orElse();
  }
}

abstract class _onAddTaskPressed implements NewTaskEvent {
  const factory _onAddTaskPressed() = _$_onAddTaskPressed;
}

/// @nodoc
abstract class _$onEmitFromAnywhereCopyWith<$Res> {
  factory _$onEmitFromAnywhereCopyWith(
          _onEmitFromAnywhere value, $Res Function(_onEmitFromAnywhere) then) =
      __$onEmitFromAnywhereCopyWithImpl<$Res>;
  $Res call({NewTaskState state});

  $NewTaskStateCopyWith<$Res> get state;
}

/// @nodoc
class __$onEmitFromAnywhereCopyWithImpl<$Res>
    extends _$NewTaskEventCopyWithImpl<$Res>
    implements _$onEmitFromAnywhereCopyWith<$Res> {
  __$onEmitFromAnywhereCopyWithImpl(
      _onEmitFromAnywhere _value, $Res Function(_onEmitFromAnywhere) _then)
      : super(_value, (v) => _then(v as _onEmitFromAnywhere));

  @override
  _onEmitFromAnywhere get _value => super._value as _onEmitFromAnywhere;

  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_onEmitFromAnywhere(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as NewTaskState,
    ));
  }

  @override
  $NewTaskStateCopyWith<$Res> get state {
    return $NewTaskStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_onEmitFromAnywhere implements _onEmitFromAnywhere {
  const _$_onEmitFromAnywhere({required this.state});

  @override
  final NewTaskState state;

  @override
  String toString() {
    return 'NewTaskEvent.emitFromAnywhere(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _onEmitFromAnywhere &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  _$onEmitFromAnywhereCopyWith<_onEmitFromAnywhere> get copyWith =>
      __$onEmitFromAnywhereCopyWithImpl<_onEmitFromAnywhere>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onAddTaskPressed,
    required TResult Function(NewTaskState state) emitFromAnywhere,
  }) {
    return emitFromAnywhere(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onAddTaskPressed,
    TResult Function(NewTaskState state)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onAddTaskPressed,
    TResult Function(NewTaskState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onAddTaskPressed value) onAddTaskPressed,
    required TResult Function(_onEmitFromAnywhere value) emitFromAnywhere,
  }) {
    return emitFromAnywhere(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_onAddTaskPressed value)? onAddTaskPressed,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onAddTaskPressed value)? onAddTaskPressed,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(this);
    }
    return orElse();
  }
}

abstract class _onEmitFromAnywhere implements NewTaskEvent {
  const factory _onEmitFromAnywhere({required NewTaskState state}) =
      _$_onEmitFromAnywhere;

  NewTaskState get state;
  @JsonKey(ignore: true)
  _$onEmitFromAnywhereCopyWith<_onEmitFromAnywhere> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NewTaskStateTearOff {
  const _$NewTaskStateTearOff();

  _NewTaskState call(
      {required bool isLoading,
      required bool isSuccessful,
      required bool isFailed,
      required String errorMessage,
      required GlobalKey<FormState> formKey,
      required AppStateNotifier appStateNotifier,
      required TextEditingController titleController,
      required TextEditingController descriptionController,
      required TaskRepository taskRepository,
      TaskDto? user}) {
    return _NewTaskState(
      isLoading: isLoading,
      isSuccessful: isSuccessful,
      isFailed: isFailed,
      errorMessage: errorMessage,
      formKey: formKey,
      appStateNotifier: appStateNotifier,
      titleController: titleController,
      descriptionController: descriptionController,
      taskRepository: taskRepository,
      user: user,
    );
  }
}

/// @nodoc
const $NewTaskState = _$NewTaskStateTearOff();

/// @nodoc
mixin _$NewTaskState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  AppStateNotifier get appStateNotifier => throw _privateConstructorUsedError;
  TextEditingController get titleController =>
      throw _privateConstructorUsedError;
  TextEditingController get descriptionController =>
      throw _privateConstructorUsedError;
  TaskRepository get taskRepository => throw _privateConstructorUsedError;
  TaskDto? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewTaskStateCopyWith<NewTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewTaskStateCopyWith<$Res> {
  factory $NewTaskStateCopyWith(
          NewTaskState value, $Res Function(NewTaskState) then) =
      _$NewTaskStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isSuccessful,
      bool isFailed,
      String errorMessage,
      GlobalKey<FormState> formKey,
      AppStateNotifier appStateNotifier,
      TextEditingController titleController,
      TextEditingController descriptionController,
      TaskRepository taskRepository,
      TaskDto? user});

  $TaskDtoCopyWith<$Res>? get user;
}

/// @nodoc
class _$NewTaskStateCopyWithImpl<$Res> implements $NewTaskStateCopyWith<$Res> {
  _$NewTaskStateCopyWithImpl(this._value, this._then);

  final NewTaskState _value;
  // ignore: unused_field
  final $Res Function(NewTaskState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isSuccessful = freezed,
    Object? isFailed = freezed,
    Object? errorMessage = freezed,
    Object? formKey = freezed,
    Object? appStateNotifier = freezed,
    Object? titleController = freezed,
    Object? descriptionController = freezed,
    Object? taskRepository = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccessful: isSuccessful == freezed
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: isFailed == freezed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      formKey: formKey == freezed
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      appStateNotifier: appStateNotifier == freezed
          ? _value.appStateNotifier
          : appStateNotifier // ignore: cast_nullable_to_non_nullable
              as AppStateNotifier,
      titleController: titleController == freezed
          ? _value.titleController
          : titleController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      descriptionController: descriptionController == freezed
          ? _value.descriptionController
          : descriptionController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      taskRepository: taskRepository == freezed
          ? _value.taskRepository
          : taskRepository // ignore: cast_nullable_to_non_nullable
              as TaskRepository,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as TaskDto?,
    ));
  }

  @override
  $TaskDtoCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $TaskDtoCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$NewTaskStateCopyWith<$Res>
    implements $NewTaskStateCopyWith<$Res> {
  factory _$NewTaskStateCopyWith(
          _NewTaskState value, $Res Function(_NewTaskState) then) =
      __$NewTaskStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isSuccessful,
      bool isFailed,
      String errorMessage,
      GlobalKey<FormState> formKey,
      AppStateNotifier appStateNotifier,
      TextEditingController titleController,
      TextEditingController descriptionController,
      TaskRepository taskRepository,
      TaskDto? user});

  @override
  $TaskDtoCopyWith<$Res>? get user;
}

/// @nodoc
class __$NewTaskStateCopyWithImpl<$Res> extends _$NewTaskStateCopyWithImpl<$Res>
    implements _$NewTaskStateCopyWith<$Res> {
  __$NewTaskStateCopyWithImpl(
      _NewTaskState _value, $Res Function(_NewTaskState) _then)
      : super(_value, (v) => _then(v as _NewTaskState));

  @override
  _NewTaskState get _value => super._value as _NewTaskState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isSuccessful = freezed,
    Object? isFailed = freezed,
    Object? errorMessage = freezed,
    Object? formKey = freezed,
    Object? appStateNotifier = freezed,
    Object? titleController = freezed,
    Object? descriptionController = freezed,
    Object? taskRepository = freezed,
    Object? user = freezed,
  }) {
    return _then(_NewTaskState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccessful: isSuccessful == freezed
          ? _value.isSuccessful
          : isSuccessful // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailed: isFailed == freezed
          ? _value.isFailed
          : isFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      formKey: formKey == freezed
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormState>,
      appStateNotifier: appStateNotifier == freezed
          ? _value.appStateNotifier
          : appStateNotifier // ignore: cast_nullable_to_non_nullable
              as AppStateNotifier,
      titleController: titleController == freezed
          ? _value.titleController
          : titleController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      descriptionController: descriptionController == freezed
          ? _value.descriptionController
          : descriptionController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      taskRepository: taskRepository == freezed
          ? _value.taskRepository
          : taskRepository // ignore: cast_nullable_to_non_nullable
              as TaskRepository,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as TaskDto?,
    ));
  }
}

/// @nodoc

class _$_NewTaskState implements _NewTaskState {
  const _$_NewTaskState(
      {required this.isLoading,
      required this.isSuccessful,
      required this.isFailed,
      required this.errorMessage,
      required this.formKey,
      required this.appStateNotifier,
      required this.titleController,
      required this.descriptionController,
      required this.taskRepository,
      this.user});

  @override
  final bool isLoading;
  @override
  final bool isSuccessful;
  @override
  final bool isFailed;
  @override
  final String errorMessage;
  @override
  final GlobalKey<FormState> formKey;
  @override
  final AppStateNotifier appStateNotifier;
  @override
  final TextEditingController titleController;
  @override
  final TextEditingController descriptionController;
  @override
  final TaskRepository taskRepository;
  @override
  final TaskDto? user;

  @override
  String toString() {
    return 'NewTaskState(isLoading: $isLoading, isSuccessful: $isSuccessful, isFailed: $isFailed, errorMessage: $errorMessage, formKey: $formKey, appStateNotifier: $appStateNotifier, titleController: $titleController, descriptionController: $descriptionController, taskRepository: $taskRepository, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NewTaskState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isSuccessful, isSuccessful) &&
            const DeepCollectionEquality().equals(other.isFailed, isFailed) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality().equals(other.formKey, formKey) &&
            const DeepCollectionEquality()
                .equals(other.appStateNotifier, appStateNotifier) &&
            const DeepCollectionEquality()
                .equals(other.titleController, titleController) &&
            const DeepCollectionEquality()
                .equals(other.descriptionController, descriptionController) &&
            const DeepCollectionEquality()
                .equals(other.taskRepository, taskRepository) &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isSuccessful),
      const DeepCollectionEquality().hash(isFailed),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(formKey),
      const DeepCollectionEquality().hash(appStateNotifier),
      const DeepCollectionEquality().hash(titleController),
      const DeepCollectionEquality().hash(descriptionController),
      const DeepCollectionEquality().hash(taskRepository),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$NewTaskStateCopyWith<_NewTaskState> get copyWith =>
      __$NewTaskStateCopyWithImpl<_NewTaskState>(this, _$identity);
}

abstract class _NewTaskState implements NewTaskState {
  const factory _NewTaskState(
      {required bool isLoading,
      required bool isSuccessful,
      required bool isFailed,
      required String errorMessage,
      required GlobalKey<FormState> formKey,
      required AppStateNotifier appStateNotifier,
      required TextEditingController titleController,
      required TextEditingController descriptionController,
      required TaskRepository taskRepository,
      TaskDto? user}) = _$_NewTaskState;

  @override
  bool get isLoading;
  @override
  bool get isSuccessful;
  @override
  bool get isFailed;
  @override
  String get errorMessage;
  @override
  GlobalKey<FormState> get formKey;
  @override
  AppStateNotifier get appStateNotifier;
  @override
  TextEditingController get titleController;
  @override
  TextEditingController get descriptionController;
  @override
  TaskRepository get taskRepository;
  @override
  TaskDto? get user;
  @override
  @JsonKey(ignore: true)
  _$NewTaskStateCopyWith<_NewTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}
