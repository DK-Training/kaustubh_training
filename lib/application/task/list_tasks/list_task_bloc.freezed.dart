// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ListTaskEventTearOff {
  const _$ListTaskEventTearOff();

  _GetAllTasks getAllTasks() {
    return const _GetAllTasks();
  }

  _DeleteTask deleteTask({required String taskId}) {
    return _DeleteTask(
      taskId: taskId,
    );
  }

  _onEmitFromAnywhere emitFromAnywhere({required ListTaskState state}) {
    return _onEmitFromAnywhere(
      state: state,
    );
  }
}

/// @nodoc
const $ListTaskEvent = _$ListTaskEventTearOff();

/// @nodoc
mixin _$ListTaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTasks,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(ListTaskState state) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllTasks,
    TResult Function(String taskId)? deleteTask,
    TResult Function(ListTaskState state)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTasks,
    TResult Function(String taskId)? deleteTask,
    TResult Function(ListTaskState state)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllTasks value) getAllTasks,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_onEmitFromAnywhere value) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllTasks value)? getAllTasks,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllTasks value)? getAllTasks,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTaskEventCopyWith<$Res> {
  factory $ListTaskEventCopyWith(
          ListTaskEvent value, $Res Function(ListTaskEvent) then) =
      _$ListTaskEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListTaskEventCopyWithImpl<$Res>
    implements $ListTaskEventCopyWith<$Res> {
  _$ListTaskEventCopyWithImpl(this._value, this._then);

  final ListTaskEvent _value;
  // ignore: unused_field
  final $Res Function(ListTaskEvent) _then;
}

/// @nodoc
abstract class _$GetAllTasksCopyWith<$Res> {
  factory _$GetAllTasksCopyWith(
          _GetAllTasks value, $Res Function(_GetAllTasks) then) =
      __$GetAllTasksCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetAllTasksCopyWithImpl<$Res> extends _$ListTaskEventCopyWithImpl<$Res>
    implements _$GetAllTasksCopyWith<$Res> {
  __$GetAllTasksCopyWithImpl(
      _GetAllTasks _value, $Res Function(_GetAllTasks) _then)
      : super(_value, (v) => _then(v as _GetAllTasks));

  @override
  _GetAllTasks get _value => super._value as _GetAllTasks;
}

/// @nodoc

class _$_GetAllTasks implements _GetAllTasks {
  const _$_GetAllTasks();

  @override
  String toString() {
    return 'ListTaskEvent.getAllTasks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetAllTasks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTasks,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(ListTaskState state) emitFromAnywhere,
  }) {
    return getAllTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllTasks,
    TResult Function(String taskId)? deleteTask,
    TResult Function(ListTaskState state)? emitFromAnywhere,
  }) {
    return getAllTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTasks,
    TResult Function(String taskId)? deleteTask,
    TResult Function(ListTaskState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (getAllTasks != null) {
      return getAllTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllTasks value) getAllTasks,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_onEmitFromAnywhere value) emitFromAnywhere,
  }) {
    return getAllTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllTasks value)? getAllTasks,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return getAllTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllTasks value)? getAllTasks,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (getAllTasks != null) {
      return getAllTasks(this);
    }
    return orElse();
  }
}

abstract class _GetAllTasks implements ListTaskEvent {
  const factory _GetAllTasks() = _$_GetAllTasks;
}

/// @nodoc
abstract class _$DeleteTaskCopyWith<$Res> {
  factory _$DeleteTaskCopyWith(
          _DeleteTask value, $Res Function(_DeleteTask) then) =
      __$DeleteTaskCopyWithImpl<$Res>;
  $Res call({String taskId});
}

/// @nodoc
class __$DeleteTaskCopyWithImpl<$Res> extends _$ListTaskEventCopyWithImpl<$Res>
    implements _$DeleteTaskCopyWith<$Res> {
  __$DeleteTaskCopyWithImpl(
      _DeleteTask _value, $Res Function(_DeleteTask) _then)
      : super(_value, (v) => _then(v as _DeleteTask));

  @override
  _DeleteTask get _value => super._value as _DeleteTask;

  @override
  $Res call({
    Object? taskId = freezed,
  }) {
    return _then(_DeleteTask(
      taskId: taskId == freezed
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteTask implements _DeleteTask {
  const _$_DeleteTask({required this.taskId});

  @override
  final String taskId;

  @override
  String toString() {
    return 'ListTaskEvent.deleteTask(taskId: $taskId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DeleteTask &&
            const DeepCollectionEquality().equals(other.taskId, taskId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(taskId));

  @JsonKey(ignore: true)
  @override
  _$DeleteTaskCopyWith<_DeleteTask> get copyWith =>
      __$DeleteTaskCopyWithImpl<_DeleteTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllTasks,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(ListTaskState state) emitFromAnywhere,
  }) {
    return deleteTask(taskId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllTasks,
    TResult Function(String taskId)? deleteTask,
    TResult Function(ListTaskState state)? emitFromAnywhere,
  }) {
    return deleteTask?.call(taskId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTasks,
    TResult Function(String taskId)? deleteTask,
    TResult Function(ListTaskState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(taskId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllTasks value) getAllTasks,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_onEmitFromAnywhere value) emitFromAnywhere,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllTasks value)? getAllTasks,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllTasks value)? getAllTasks,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class _DeleteTask implements ListTaskEvent {
  const factory _DeleteTask({required String taskId}) = _$_DeleteTask;

  String get taskId;
  @JsonKey(ignore: true)
  _$DeleteTaskCopyWith<_DeleteTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$onEmitFromAnywhereCopyWith<$Res> {
  factory _$onEmitFromAnywhereCopyWith(
          _onEmitFromAnywhere value, $Res Function(_onEmitFromAnywhere) then) =
      __$onEmitFromAnywhereCopyWithImpl<$Res>;
  $Res call({ListTaskState state});

  $ListTaskStateCopyWith<$Res> get state;
}

/// @nodoc
class __$onEmitFromAnywhereCopyWithImpl<$Res>
    extends _$ListTaskEventCopyWithImpl<$Res>
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
              as ListTaskState,
    ));
  }

  @override
  $ListTaskStateCopyWith<$Res> get state {
    return $ListTaskStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_onEmitFromAnywhere implements _onEmitFromAnywhere {
  const _$_onEmitFromAnywhere({required this.state});

  @override
  final ListTaskState state;

  @override
  String toString() {
    return 'ListTaskEvent.emitFromAnywhere(state: $state)';
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
    required TResult Function() getAllTasks,
    required TResult Function(String taskId) deleteTask,
    required TResult Function(ListTaskState state) emitFromAnywhere,
  }) {
    return emitFromAnywhere(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllTasks,
    TResult Function(String taskId)? deleteTask,
    TResult Function(ListTaskState state)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllTasks,
    TResult Function(String taskId)? deleteTask,
    TResult Function(ListTaskState state)? emitFromAnywhere,
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
    required TResult Function(_GetAllTasks value) getAllTasks,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_onEmitFromAnywhere value) emitFromAnywhere,
  }) {
    return emitFromAnywhere(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllTasks value)? getAllTasks,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllTasks value)? getAllTasks,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(this);
    }
    return orElse();
  }
}

abstract class _onEmitFromAnywhere implements ListTaskEvent {
  const factory _onEmitFromAnywhere({required ListTaskState state}) =
      _$_onEmitFromAnywhere;

  ListTaskState get state;
  @JsonKey(ignore: true)
  _$onEmitFromAnywhereCopyWith<_onEmitFromAnywhere> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ListTaskStateTearOff {
  const _$ListTaskStateTearOff();

  _ListTaskState call(
      {required bool isLoading,
      required bool isSuccessful,
      required bool isFailed,
      required AppStateNotifier appStateNotifier,
      required TaskRepository taskRepository,
      required List<TaskDto> tasks}) {
    return _ListTaskState(
      isLoading: isLoading,
      isSuccessful: isSuccessful,
      isFailed: isFailed,
      appStateNotifier: appStateNotifier,
      taskRepository: taskRepository,
      tasks: tasks,
    );
  }
}

/// @nodoc
const $ListTaskState = _$ListTaskStateTearOff();

/// @nodoc
mixin _$ListTaskState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  AppStateNotifier get appStateNotifier => throw _privateConstructorUsedError;
  TaskRepository get taskRepository => throw _privateConstructorUsedError;
  List<TaskDto> get tasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListTaskStateCopyWith<ListTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTaskStateCopyWith<$Res> {
  factory $ListTaskStateCopyWith(
          ListTaskState value, $Res Function(ListTaskState) then) =
      _$ListTaskStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isSuccessful,
      bool isFailed,
      AppStateNotifier appStateNotifier,
      TaskRepository taskRepository,
      List<TaskDto> tasks});
}

/// @nodoc
class _$ListTaskStateCopyWithImpl<$Res>
    implements $ListTaskStateCopyWith<$Res> {
  _$ListTaskStateCopyWithImpl(this._value, this._then);

  final ListTaskState _value;
  // ignore: unused_field
  final $Res Function(ListTaskState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isSuccessful = freezed,
    Object? isFailed = freezed,
    Object? appStateNotifier = freezed,
    Object? taskRepository = freezed,
    Object? tasks = freezed,
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
      appStateNotifier: appStateNotifier == freezed
          ? _value.appStateNotifier
          : appStateNotifier // ignore: cast_nullable_to_non_nullable
              as AppStateNotifier,
      taskRepository: taskRepository == freezed
          ? _value.taskRepository
          : taskRepository // ignore: cast_nullable_to_non_nullable
              as TaskRepository,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskDto>,
    ));
  }
}

/// @nodoc
abstract class _$ListTaskStateCopyWith<$Res>
    implements $ListTaskStateCopyWith<$Res> {
  factory _$ListTaskStateCopyWith(
          _ListTaskState value, $Res Function(_ListTaskState) then) =
      __$ListTaskStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isSuccessful,
      bool isFailed,
      AppStateNotifier appStateNotifier,
      TaskRepository taskRepository,
      List<TaskDto> tasks});
}

/// @nodoc
class __$ListTaskStateCopyWithImpl<$Res>
    extends _$ListTaskStateCopyWithImpl<$Res>
    implements _$ListTaskStateCopyWith<$Res> {
  __$ListTaskStateCopyWithImpl(
      _ListTaskState _value, $Res Function(_ListTaskState) _then)
      : super(_value, (v) => _then(v as _ListTaskState));

  @override
  _ListTaskState get _value => super._value as _ListTaskState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isSuccessful = freezed,
    Object? isFailed = freezed,
    Object? appStateNotifier = freezed,
    Object? taskRepository = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_ListTaskState(
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
      appStateNotifier: appStateNotifier == freezed
          ? _value.appStateNotifier
          : appStateNotifier // ignore: cast_nullable_to_non_nullable
              as AppStateNotifier,
      taskRepository: taskRepository == freezed
          ? _value.taskRepository
          : taskRepository // ignore: cast_nullable_to_non_nullable
              as TaskRepository,
      tasks: tasks == freezed
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskDto>,
    ));
  }
}

/// @nodoc

class _$_ListTaskState implements _ListTaskState {
  const _$_ListTaskState(
      {required this.isLoading,
      required this.isSuccessful,
      required this.isFailed,
      required this.appStateNotifier,
      required this.taskRepository,
      required this.tasks});

  @override
  final bool isLoading;
  @override
  final bool isSuccessful;
  @override
  final bool isFailed;
  @override
  final AppStateNotifier appStateNotifier;
  @override
  final TaskRepository taskRepository;
  @override
  final List<TaskDto> tasks;

  @override
  String toString() {
    return 'ListTaskState(isLoading: $isLoading, isSuccessful: $isSuccessful, isFailed: $isFailed, appStateNotifier: $appStateNotifier, taskRepository: $taskRepository, tasks: $tasks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListTaskState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isSuccessful, isSuccessful) &&
            const DeepCollectionEquality().equals(other.isFailed, isFailed) &&
            const DeepCollectionEquality()
                .equals(other.appStateNotifier, appStateNotifier) &&
            const DeepCollectionEquality()
                .equals(other.taskRepository, taskRepository) &&
            const DeepCollectionEquality().equals(other.tasks, tasks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isSuccessful),
      const DeepCollectionEquality().hash(isFailed),
      const DeepCollectionEquality().hash(appStateNotifier),
      const DeepCollectionEquality().hash(taskRepository),
      const DeepCollectionEquality().hash(tasks));

  @JsonKey(ignore: true)
  @override
  _$ListTaskStateCopyWith<_ListTaskState> get copyWith =>
      __$ListTaskStateCopyWithImpl<_ListTaskState>(this, _$identity);
}

abstract class _ListTaskState implements ListTaskState {
  const factory _ListTaskState(
      {required bool isLoading,
      required bool isSuccessful,
      required bool isFailed,
      required AppStateNotifier appStateNotifier,
      required TaskRepository taskRepository,
      required List<TaskDto> tasks}) = _$_ListTaskState;

  @override
  bool get isLoading;
  @override
  bool get isSuccessful;
  @override
  bool get isFailed;
  @override
  AppStateNotifier get appStateNotifier;
  @override
  TaskRepository get taskRepository;
  @override
  List<TaskDto> get tasks;
  @override
  @JsonKey(ignore: true)
  _$ListTaskStateCopyWith<_ListTaskState> get copyWith =>
      throw _privateConstructorUsedError;
}
