// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LogInEventTearOff {
  const _$LogInEventTearOff();

  _onLogInPressed onLogInPressed() {
    return const _onLogInPressed();
  }

  _onEmitFromAnywhere emitFromAnywhere({required LogInState state}) {
    return _onEmitFromAnywhere(
      state: state,
    );
  }
}

/// @nodoc
const $LogInEvent = _$LogInEventTearOff();

/// @nodoc
mixin _$LogInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLogInPressed,
    required TResult Function(LogInState state) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLogInPressed,
    TResult Function(LogInState state)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLogInPressed,
    TResult Function(LogInState state)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onLogInPressed value) onLogInPressed,
    required TResult Function(_onEmitFromAnywhere value) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_onLogInPressed value)? onLogInPressed,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onLogInPressed value)? onLogInPressed,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInEventCopyWith<$Res> {
  factory $LogInEventCopyWith(
          LogInEvent value, $Res Function(LogInEvent) then) =
      _$LogInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$LogInEventCopyWithImpl<$Res> implements $LogInEventCopyWith<$Res> {
  _$LogInEventCopyWithImpl(this._value, this._then);

  final LogInEvent _value;
  // ignore: unused_field
  final $Res Function(LogInEvent) _then;
}

/// @nodoc
abstract class _$onLogInPressedCopyWith<$Res> {
  factory _$onLogInPressedCopyWith(
          _onLogInPressed value, $Res Function(_onLogInPressed) then) =
      __$onLogInPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$onLogInPressedCopyWithImpl<$Res> extends _$LogInEventCopyWithImpl<$Res>
    implements _$onLogInPressedCopyWith<$Res> {
  __$onLogInPressedCopyWithImpl(
      _onLogInPressed _value, $Res Function(_onLogInPressed) _then)
      : super(_value, (v) => _then(v as _onLogInPressed));

  @override
  _onLogInPressed get _value => super._value as _onLogInPressed;
}

/// @nodoc

class _$_onLogInPressed implements _onLogInPressed {
  const _$_onLogInPressed();

  @override
  String toString() {
    return 'LogInEvent.onLogInPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _onLogInPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onLogInPressed,
    required TResult Function(LogInState state) emitFromAnywhere,
  }) {
    return onLogInPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLogInPressed,
    TResult Function(LogInState state)? emitFromAnywhere,
  }) {
    return onLogInPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLogInPressed,
    TResult Function(LogInState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onLogInPressed != null) {
      return onLogInPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onLogInPressed value) onLogInPressed,
    required TResult Function(_onEmitFromAnywhere value) emitFromAnywhere,
  }) {
    return onLogInPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_onLogInPressed value)? onLogInPressed,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return onLogInPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onLogInPressed value)? onLogInPressed,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onLogInPressed != null) {
      return onLogInPressed(this);
    }
    return orElse();
  }
}

abstract class _onLogInPressed implements LogInEvent {
  const factory _onLogInPressed() = _$_onLogInPressed;
}

/// @nodoc
abstract class _$onEmitFromAnywhereCopyWith<$Res> {
  factory _$onEmitFromAnywhereCopyWith(
          _onEmitFromAnywhere value, $Res Function(_onEmitFromAnywhere) then) =
      __$onEmitFromAnywhereCopyWithImpl<$Res>;
  $Res call({LogInState state});

  $LogInStateCopyWith<$Res> get state;
}

/// @nodoc
class __$onEmitFromAnywhereCopyWithImpl<$Res>
    extends _$LogInEventCopyWithImpl<$Res>
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
              as LogInState,
    ));
  }

  @override
  $LogInStateCopyWith<$Res> get state {
    return $LogInStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_onEmitFromAnywhere implements _onEmitFromAnywhere {
  const _$_onEmitFromAnywhere({required this.state});

  @override
  final LogInState state;

  @override
  String toString() {
    return 'LogInEvent.emitFromAnywhere(state: $state)';
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
    required TResult Function() onLogInPressed,
    required TResult Function(LogInState state) emitFromAnywhere,
  }) {
    return emitFromAnywhere(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onLogInPressed,
    TResult Function(LogInState state)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onLogInPressed,
    TResult Function(LogInState state)? emitFromAnywhere,
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
    required TResult Function(_onLogInPressed value) onLogInPressed,
    required TResult Function(_onEmitFromAnywhere value) emitFromAnywhere,
  }) {
    return emitFromAnywhere(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_onLogInPressed value)? onLogInPressed,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onLogInPressed value)? onLogInPressed,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(this);
    }
    return orElse();
  }
}

abstract class _onEmitFromAnywhere implements LogInEvent {
  const factory _onEmitFromAnywhere({required LogInState state}) =
      _$_onEmitFromAnywhere;

  LogInState get state;
  @JsonKey(ignore: true)
  _$onEmitFromAnywhereCopyWith<_onEmitFromAnywhere> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$LogInStateTearOff {
  const _$LogInStateTearOff();

  _LogInState call(
      {required bool isLoading,
      required bool isSuccessful,
      required bool isFailed,
      required bool obscurePassword,
      required bool obscureConfirmPassword,
      required String errorEmail,
      required String errorPassword,
      required String errorMessage,
      required GlobalKey<FormState> formKey,
      required AppStateNotifier appStateNotifier,
      required TextEditingController userEmailController,
      required TextEditingController passwordController,
      required AuthRepository authRepository}) {
    return _LogInState(
      isLoading: isLoading,
      isSuccessful: isSuccessful,
      isFailed: isFailed,
      obscurePassword: obscurePassword,
      obscureConfirmPassword: obscureConfirmPassword,
      errorEmail: errorEmail,
      errorPassword: errorPassword,
      errorMessage: errorMessage,
      formKey: formKey,
      appStateNotifier: appStateNotifier,
      userEmailController: userEmailController,
      passwordController: passwordController,
      authRepository: authRepository,
    );
  }
}

/// @nodoc
const $LogInState = _$LogInStateTearOff();

/// @nodoc
mixin _$LogInState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  bool get obscurePassword => throw _privateConstructorUsedError;
  bool get obscureConfirmPassword => throw _privateConstructorUsedError;
  String get errorEmail => throw _privateConstructorUsedError;
  String get errorPassword => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  AppStateNotifier get appStateNotifier => throw _privateConstructorUsedError;
  TextEditingController get userEmailController =>
      throw _privateConstructorUsedError;
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;
  AuthRepository get authRepository => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogInStateCopyWith<LogInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInStateCopyWith<$Res> {
  factory $LogInStateCopyWith(
          LogInState value, $Res Function(LogInState) then) =
      _$LogInStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isSuccessful,
      bool isFailed,
      bool obscurePassword,
      bool obscureConfirmPassword,
      String errorEmail,
      String errorPassword,
      String errorMessage,
      GlobalKey<FormState> formKey,
      AppStateNotifier appStateNotifier,
      TextEditingController userEmailController,
      TextEditingController passwordController,
      AuthRepository authRepository});
}

/// @nodoc
class _$LogInStateCopyWithImpl<$Res> implements $LogInStateCopyWith<$Res> {
  _$LogInStateCopyWithImpl(this._value, this._then);

  final LogInState _value;
  // ignore: unused_field
  final $Res Function(LogInState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isSuccessful = freezed,
    Object? isFailed = freezed,
    Object? obscurePassword = freezed,
    Object? obscureConfirmPassword = freezed,
    Object? errorEmail = freezed,
    Object? errorPassword = freezed,
    Object? errorMessage = freezed,
    Object? formKey = freezed,
    Object? appStateNotifier = freezed,
    Object? userEmailController = freezed,
    Object? passwordController = freezed,
    Object? authRepository = freezed,
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
      obscurePassword: obscurePassword == freezed
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      obscureConfirmPassword: obscureConfirmPassword == freezed
          ? _value.obscureConfirmPassword
          : obscureConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      errorEmail: errorEmail == freezed
          ? _value.errorEmail
          : errorEmail // ignore: cast_nullable_to_non_nullable
              as String,
      errorPassword: errorPassword == freezed
          ? _value.errorPassword
          : errorPassword // ignore: cast_nullable_to_non_nullable
              as String,
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
      userEmailController: userEmailController == freezed
          ? _value.userEmailController
          : userEmailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: passwordController == freezed
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      authRepository: authRepository == freezed
          ? _value.authRepository
          : authRepository // ignore: cast_nullable_to_non_nullable
              as AuthRepository,
    ));
  }
}

/// @nodoc
abstract class _$LogInStateCopyWith<$Res> implements $LogInStateCopyWith<$Res> {
  factory _$LogInStateCopyWith(
          _LogInState value, $Res Function(_LogInState) then) =
      __$LogInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isSuccessful,
      bool isFailed,
      bool obscurePassword,
      bool obscureConfirmPassword,
      String errorEmail,
      String errorPassword,
      String errorMessage,
      GlobalKey<FormState> formKey,
      AppStateNotifier appStateNotifier,
      TextEditingController userEmailController,
      TextEditingController passwordController,
      AuthRepository authRepository});
}

/// @nodoc
class __$LogInStateCopyWithImpl<$Res> extends _$LogInStateCopyWithImpl<$Res>
    implements _$LogInStateCopyWith<$Res> {
  __$LogInStateCopyWithImpl(
      _LogInState _value, $Res Function(_LogInState) _then)
      : super(_value, (v) => _then(v as _LogInState));

  @override
  _LogInState get _value => super._value as _LogInState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isSuccessful = freezed,
    Object? isFailed = freezed,
    Object? obscurePassword = freezed,
    Object? obscureConfirmPassword = freezed,
    Object? errorEmail = freezed,
    Object? errorPassword = freezed,
    Object? errorMessage = freezed,
    Object? formKey = freezed,
    Object? appStateNotifier = freezed,
    Object? userEmailController = freezed,
    Object? passwordController = freezed,
    Object? authRepository = freezed,
  }) {
    return _then(_LogInState(
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
      obscurePassword: obscurePassword == freezed
          ? _value.obscurePassword
          : obscurePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      obscureConfirmPassword: obscureConfirmPassword == freezed
          ? _value.obscureConfirmPassword
          : obscureConfirmPassword // ignore: cast_nullable_to_non_nullable
              as bool,
      errorEmail: errorEmail == freezed
          ? _value.errorEmail
          : errorEmail // ignore: cast_nullable_to_non_nullable
              as String,
      errorPassword: errorPassword == freezed
          ? _value.errorPassword
          : errorPassword // ignore: cast_nullable_to_non_nullable
              as String,
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
      userEmailController: userEmailController == freezed
          ? _value.userEmailController
          : userEmailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: passwordController == freezed
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      authRepository: authRepository == freezed
          ? _value.authRepository
          : authRepository // ignore: cast_nullable_to_non_nullable
              as AuthRepository,
    ));
  }
}

/// @nodoc

class _$_LogInState implements _LogInState {
  const _$_LogInState(
      {required this.isLoading,
      required this.isSuccessful,
      required this.isFailed,
      required this.obscurePassword,
      required this.obscureConfirmPassword,
      required this.errorEmail,
      required this.errorPassword,
      required this.errorMessage,
      required this.formKey,
      required this.appStateNotifier,
      required this.userEmailController,
      required this.passwordController,
      required this.authRepository});

  @override
  final bool isLoading;
  @override
  final bool isSuccessful;
  @override
  final bool isFailed;
  @override
  final bool obscurePassword;
  @override
  final bool obscureConfirmPassword;
  @override
  final String errorEmail;
  @override
  final String errorPassword;
  @override
  final String errorMessage;
  @override
  final GlobalKey<FormState> formKey;
  @override
  final AppStateNotifier appStateNotifier;
  @override
  final TextEditingController userEmailController;
  @override
  final TextEditingController passwordController;
  @override
  final AuthRepository authRepository;

  @override
  String toString() {
    return 'LogInState(isLoading: $isLoading, isSuccessful: $isSuccessful, isFailed: $isFailed, obscurePassword: $obscurePassword, obscureConfirmPassword: $obscureConfirmPassword, errorEmail: $errorEmail, errorPassword: $errorPassword, errorMessage: $errorMessage, formKey: $formKey, appStateNotifier: $appStateNotifier, userEmailController: $userEmailController, passwordController: $passwordController, authRepository: $authRepository)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LogInState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isSuccessful, isSuccessful) &&
            const DeepCollectionEquality().equals(other.isFailed, isFailed) &&
            const DeepCollectionEquality()
                .equals(other.obscurePassword, obscurePassword) &&
            const DeepCollectionEquality()
                .equals(other.obscureConfirmPassword, obscureConfirmPassword) &&
            const DeepCollectionEquality()
                .equals(other.errorEmail, errorEmail) &&
            const DeepCollectionEquality()
                .equals(other.errorPassword, errorPassword) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality().equals(other.formKey, formKey) &&
            const DeepCollectionEquality()
                .equals(other.appStateNotifier, appStateNotifier) &&
            const DeepCollectionEquality()
                .equals(other.userEmailController, userEmailController) &&
            const DeepCollectionEquality()
                .equals(other.passwordController, passwordController) &&
            const DeepCollectionEquality()
                .equals(other.authRepository, authRepository));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isSuccessful),
      const DeepCollectionEquality().hash(isFailed),
      const DeepCollectionEquality().hash(obscurePassword),
      const DeepCollectionEquality().hash(obscureConfirmPassword),
      const DeepCollectionEquality().hash(errorEmail),
      const DeepCollectionEquality().hash(errorPassword),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(formKey),
      const DeepCollectionEquality().hash(appStateNotifier),
      const DeepCollectionEquality().hash(userEmailController),
      const DeepCollectionEquality().hash(passwordController),
      const DeepCollectionEquality().hash(authRepository));

  @JsonKey(ignore: true)
  @override
  _$LogInStateCopyWith<_LogInState> get copyWith =>
      __$LogInStateCopyWithImpl<_LogInState>(this, _$identity);
}

abstract class _LogInState implements LogInState {
  const factory _LogInState(
      {required bool isLoading,
      required bool isSuccessful,
      required bool isFailed,
      required bool obscurePassword,
      required bool obscureConfirmPassword,
      required String errorEmail,
      required String errorPassword,
      required String errorMessage,
      required GlobalKey<FormState> formKey,
      required AppStateNotifier appStateNotifier,
      required TextEditingController userEmailController,
      required TextEditingController passwordController,
      required AuthRepository authRepository}) = _$_LogInState;

  @override
  bool get isLoading;
  @override
  bool get isSuccessful;
  @override
  bool get isFailed;
  @override
  bool get obscurePassword;
  @override
  bool get obscureConfirmPassword;
  @override
  String get errorEmail;
  @override
  String get errorPassword;
  @override
  String get errorMessage;
  @override
  GlobalKey<FormState> get formKey;
  @override
  AppStateNotifier get appStateNotifier;
  @override
  TextEditingController get userEmailController;
  @override
  TextEditingController get passwordController;
  @override
  AuthRepository get authRepository;
  @override
  @JsonKey(ignore: true)
  _$LogInStateCopyWith<_LogInState> get copyWith =>
      throw _privateConstructorUsedError;
}
