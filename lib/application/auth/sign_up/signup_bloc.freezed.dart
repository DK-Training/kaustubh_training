// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'signup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignupEventTearOff {
  const _$SignupEventTearOff();

  _OnRegisterPressed onRegisterPressed() {
    return const _OnRegisterPressed();
  }

  _EmitFromAnywhere emitFromAnywhere({required SignupState state}) {
    return _EmitFromAnywhere(
      state: state,
    );
  }
}

/// @nodoc
const $SignupEvent = _$SignupEventTearOff();

/// @nodoc
mixin _$SignupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRegisterPressed,
    required TResult Function(SignupState state) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onRegisterPressed,
    TResult Function(SignupState state)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRegisterPressed,
    TResult Function(SignupState state)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRegisterPressed value) onRegisterPressed,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnRegisterPressed value)? onRegisterPressed,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRegisterPressed value)? onRegisterPressed,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupEventCopyWith<$Res> {
  factory $SignupEventCopyWith(
          SignupEvent value, $Res Function(SignupEvent) then) =
      _$SignupEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignupEventCopyWithImpl<$Res> implements $SignupEventCopyWith<$Res> {
  _$SignupEventCopyWithImpl(this._value, this._then);

  final SignupEvent _value;
  // ignore: unused_field
  final $Res Function(SignupEvent) _then;
}

/// @nodoc
abstract class _$OnRegisterPressedCopyWith<$Res> {
  factory _$OnRegisterPressedCopyWith(
          _OnRegisterPressed value, $Res Function(_OnRegisterPressed) then) =
      __$OnRegisterPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnRegisterPressedCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res>
    implements _$OnRegisterPressedCopyWith<$Res> {
  __$OnRegisterPressedCopyWithImpl(
      _OnRegisterPressed _value, $Res Function(_OnRegisterPressed) _then)
      : super(_value, (v) => _then(v as _OnRegisterPressed));

  @override
  _OnRegisterPressed get _value => super._value as _OnRegisterPressed;
}

/// @nodoc

class _$_OnRegisterPressed implements _OnRegisterPressed {
  const _$_OnRegisterPressed();

  @override
  String toString() {
    return 'SignupEvent.onRegisterPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OnRegisterPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRegisterPressed,
    required TResult Function(SignupState state) emitFromAnywhere,
  }) {
    return onRegisterPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onRegisterPressed,
    TResult Function(SignupState state)? emitFromAnywhere,
  }) {
    return onRegisterPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRegisterPressed,
    TResult Function(SignupState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onRegisterPressed != null) {
      return onRegisterPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRegisterPressed value) onRegisterPressed,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return onRegisterPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnRegisterPressed value)? onRegisterPressed,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return onRegisterPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRegisterPressed value)? onRegisterPressed,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onRegisterPressed != null) {
      return onRegisterPressed(this);
    }
    return orElse();
  }
}

abstract class _OnRegisterPressed implements SignupEvent {
  const factory _OnRegisterPressed() = _$_OnRegisterPressed;
}

/// @nodoc
abstract class _$EmitFromAnywhereCopyWith<$Res> {
  factory _$EmitFromAnywhereCopyWith(
          _EmitFromAnywhere value, $Res Function(_EmitFromAnywhere) then) =
      __$EmitFromAnywhereCopyWithImpl<$Res>;
  $Res call({SignupState state});

  $SignupStateCopyWith<$Res> get state;
}

/// @nodoc
class __$EmitFromAnywhereCopyWithImpl<$Res>
    extends _$SignupEventCopyWithImpl<$Res>
    implements _$EmitFromAnywhereCopyWith<$Res> {
  __$EmitFromAnywhereCopyWithImpl(
      _EmitFromAnywhere _value, $Res Function(_EmitFromAnywhere) _then)
      : super(_value, (v) => _then(v as _EmitFromAnywhere));

  @override
  _EmitFromAnywhere get _value => super._value as _EmitFromAnywhere;

  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_EmitFromAnywhere(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as SignupState,
    ));
  }

  @override
  $SignupStateCopyWith<$Res> get state {
    return $SignupStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_EmitFromAnywhere implements _EmitFromAnywhere {
  const _$_EmitFromAnywhere({required this.state});

  @override
  final SignupState state;

  @override
  String toString() {
    return 'SignupEvent.emitFromAnywhere(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmitFromAnywhere &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  _$EmitFromAnywhereCopyWith<_EmitFromAnywhere> get copyWith =>
      __$EmitFromAnywhereCopyWithImpl<_EmitFromAnywhere>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRegisterPressed,
    required TResult Function(SignupState state) emitFromAnywhere,
  }) {
    return emitFromAnywhere(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onRegisterPressed,
    TResult Function(SignupState state)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRegisterPressed,
    TResult Function(SignupState state)? emitFromAnywhere,
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
    required TResult Function(_OnRegisterPressed value) onRegisterPressed,
    required TResult Function(_EmitFromAnywhere value) emitFromAnywhere,
  }) {
    return emitFromAnywhere(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnRegisterPressed value)? onRegisterPressed,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRegisterPressed value)? onRegisterPressed,
    TResult Function(_EmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(this);
    }
    return orElse();
  }
}

abstract class _EmitFromAnywhere implements SignupEvent {
  const factory _EmitFromAnywhere({required SignupState state}) =
      _$_EmitFromAnywhere;

  SignupState get state;
  @JsonKey(ignore: true)
  _$EmitFromAnywhereCopyWith<_EmitFromAnywhere> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignupStateTearOff {
  const _$SignupStateTearOff();

  _SignupState call(
      {required bool isLoading,
      required bool isSuccessful,
      required bool isFailed,
      required bool obscurePassword,
      required bool obscureConfirmPassword,
      required String errorFullName,
      required String errorEmail,
      required String errorPassword,
      required String errorMessage,
      required GlobalKey<FormState> formKey,
      UserDto? user,
      required AuthRepository authRepository,
      required AppStateNotifier appStateNotifier,
      required TextEditingController userEmailController,
      required TextEditingController passwordController,
      required TextEditingController confirmPasswordController}) {
    return _SignupState(
      isLoading: isLoading,
      isSuccessful: isSuccessful,
      isFailed: isFailed,
      obscurePassword: obscurePassword,
      obscureConfirmPassword: obscureConfirmPassword,
      errorFullName: errorFullName,
      errorEmail: errorEmail,
      errorPassword: errorPassword,
      errorMessage: errorMessage,
      formKey: formKey,
      user: user,
      authRepository: authRepository,
      appStateNotifier: appStateNotifier,
      userEmailController: userEmailController,
      passwordController: passwordController,
      confirmPasswordController: confirmPasswordController,
    );
  }
}

/// @nodoc
const $SignupState = _$SignupStateTearOff();

/// @nodoc
mixin _$SignupState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  bool get obscurePassword => throw _privateConstructorUsedError;
  bool get obscureConfirmPassword => throw _privateConstructorUsedError;
  String get errorFullName => throw _privateConstructorUsedError;
  String get errorEmail => throw _privateConstructorUsedError;
  String get errorPassword => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  UserDto? get user => throw _privateConstructorUsedError;
  AuthRepository get authRepository => throw _privateConstructorUsedError;
  AppStateNotifier get appStateNotifier => throw _privateConstructorUsedError;
  TextEditingController get userEmailController =>
      throw _privateConstructorUsedError;
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;
  TextEditingController get confirmPasswordController =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignupStateCopyWith<SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupStateCopyWith<$Res> {
  factory $SignupStateCopyWith(
          SignupState value, $Res Function(SignupState) then) =
      _$SignupStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isSuccessful,
      bool isFailed,
      bool obscurePassword,
      bool obscureConfirmPassword,
      String errorFullName,
      String errorEmail,
      String errorPassword,
      String errorMessage,
      GlobalKey<FormState> formKey,
      UserDto? user,
      AuthRepository authRepository,
      AppStateNotifier appStateNotifier,
      TextEditingController userEmailController,
      TextEditingController passwordController,
      TextEditingController confirmPasswordController});

  $UserDtoCopyWith<$Res>? get user;
}

/// @nodoc
class _$SignupStateCopyWithImpl<$Res> implements $SignupStateCopyWith<$Res> {
  _$SignupStateCopyWithImpl(this._value, this._then);

  final SignupState _value;
  // ignore: unused_field
  final $Res Function(SignupState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isSuccessful = freezed,
    Object? isFailed = freezed,
    Object? obscurePassword = freezed,
    Object? obscureConfirmPassword = freezed,
    Object? errorFullName = freezed,
    Object? errorEmail = freezed,
    Object? errorPassword = freezed,
    Object? errorMessage = freezed,
    Object? formKey = freezed,
    Object? user = freezed,
    Object? authRepository = freezed,
    Object? appStateNotifier = freezed,
    Object? userEmailController = freezed,
    Object? passwordController = freezed,
    Object? confirmPasswordController = freezed,
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
      errorFullName: errorFullName == freezed
          ? _value.errorFullName
          : errorFullName // ignore: cast_nullable_to_non_nullable
              as String,
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
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      authRepository: authRepository == freezed
          ? _value.authRepository
          : authRepository // ignore: cast_nullable_to_non_nullable
              as AuthRepository,
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
      confirmPasswordController: confirmPasswordController == freezed
          ? _value.confirmPasswordController
          : confirmPasswordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }

  @override
  $UserDtoCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserDtoCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$SignupStateCopyWith<$Res>
    implements $SignupStateCopyWith<$Res> {
  factory _$SignupStateCopyWith(
          _SignupState value, $Res Function(_SignupState) then) =
      __$SignupStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      bool isSuccessful,
      bool isFailed,
      bool obscurePassword,
      bool obscureConfirmPassword,
      String errorFullName,
      String errorEmail,
      String errorPassword,
      String errorMessage,
      GlobalKey<FormState> formKey,
      UserDto? user,
      AuthRepository authRepository,
      AppStateNotifier appStateNotifier,
      TextEditingController userEmailController,
      TextEditingController passwordController,
      TextEditingController confirmPasswordController});

  @override
  $UserDtoCopyWith<$Res>? get user;
}

/// @nodoc
class __$SignupStateCopyWithImpl<$Res> extends _$SignupStateCopyWithImpl<$Res>
    implements _$SignupStateCopyWith<$Res> {
  __$SignupStateCopyWithImpl(
      _SignupState _value, $Res Function(_SignupState) _then)
      : super(_value, (v) => _then(v as _SignupState));

  @override
  _SignupState get _value => super._value as _SignupState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isSuccessful = freezed,
    Object? isFailed = freezed,
    Object? obscurePassword = freezed,
    Object? obscureConfirmPassword = freezed,
    Object? errorFullName = freezed,
    Object? errorEmail = freezed,
    Object? errorPassword = freezed,
    Object? errorMessage = freezed,
    Object? formKey = freezed,
    Object? user = freezed,
    Object? authRepository = freezed,
    Object? appStateNotifier = freezed,
    Object? userEmailController = freezed,
    Object? passwordController = freezed,
    Object? confirmPasswordController = freezed,
  }) {
    return _then(_SignupState(
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
      errorFullName: errorFullName == freezed
          ? _value.errorFullName
          : errorFullName // ignore: cast_nullable_to_non_nullable
              as String,
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
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto?,
      authRepository: authRepository == freezed
          ? _value.authRepository
          : authRepository // ignore: cast_nullable_to_non_nullable
              as AuthRepository,
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
      confirmPasswordController: confirmPasswordController == freezed
          ? _value.confirmPasswordController
          : confirmPasswordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_SignupState implements _SignupState {
  const _$_SignupState(
      {required this.isLoading,
      required this.isSuccessful,
      required this.isFailed,
      required this.obscurePassword,
      required this.obscureConfirmPassword,
      required this.errorFullName,
      required this.errorEmail,
      required this.errorPassword,
      required this.errorMessage,
      required this.formKey,
      this.user,
      required this.authRepository,
      required this.appStateNotifier,
      required this.userEmailController,
      required this.passwordController,
      required this.confirmPasswordController});

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
  final String errorFullName;
  @override
  final String errorEmail;
  @override
  final String errorPassword;
  @override
  final String errorMessage;
  @override
  final GlobalKey<FormState> formKey;
  @override
  final UserDto? user;
  @override
  final AuthRepository authRepository;
  @override
  final AppStateNotifier appStateNotifier;
  @override
  final TextEditingController userEmailController;
  @override
  final TextEditingController passwordController;
  @override
  final TextEditingController confirmPasswordController;

  @override
  String toString() {
    return 'SignupState(isLoading: $isLoading, isSuccessful: $isSuccessful, isFailed: $isFailed, obscurePassword: $obscurePassword, obscureConfirmPassword: $obscureConfirmPassword, errorFullName: $errorFullName, errorEmail: $errorEmail, errorPassword: $errorPassword, errorMessage: $errorMessage, formKey: $formKey, user: $user, authRepository: $authRepository, appStateNotifier: $appStateNotifier, userEmailController: $userEmailController, passwordController: $passwordController, confirmPasswordController: $confirmPasswordController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignupState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isSuccessful, isSuccessful) &&
            const DeepCollectionEquality().equals(other.isFailed, isFailed) &&
            const DeepCollectionEquality()
                .equals(other.obscurePassword, obscurePassword) &&
            const DeepCollectionEquality()
                .equals(other.obscureConfirmPassword, obscureConfirmPassword) &&
            const DeepCollectionEquality()
                .equals(other.errorFullName, errorFullName) &&
            const DeepCollectionEquality()
                .equals(other.errorEmail, errorEmail) &&
            const DeepCollectionEquality()
                .equals(other.errorPassword, errorPassword) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality().equals(other.formKey, formKey) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.authRepository, authRepository) &&
            const DeepCollectionEquality()
                .equals(other.appStateNotifier, appStateNotifier) &&
            const DeepCollectionEquality()
                .equals(other.userEmailController, userEmailController) &&
            const DeepCollectionEquality()
                .equals(other.passwordController, passwordController) &&
            const DeepCollectionEquality().equals(
                other.confirmPasswordController, confirmPasswordController));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isSuccessful),
      const DeepCollectionEquality().hash(isFailed),
      const DeepCollectionEquality().hash(obscurePassword),
      const DeepCollectionEquality().hash(obscureConfirmPassword),
      const DeepCollectionEquality().hash(errorFullName),
      const DeepCollectionEquality().hash(errorEmail),
      const DeepCollectionEquality().hash(errorPassword),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(formKey),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(authRepository),
      const DeepCollectionEquality().hash(appStateNotifier),
      const DeepCollectionEquality().hash(userEmailController),
      const DeepCollectionEquality().hash(passwordController),
      const DeepCollectionEquality().hash(confirmPasswordController));

  @JsonKey(ignore: true)
  @override
  _$SignupStateCopyWith<_SignupState> get copyWith =>
      __$SignupStateCopyWithImpl<_SignupState>(this, _$identity);
}

abstract class _SignupState implements SignupState {
  const factory _SignupState(
          {required bool isLoading,
          required bool isSuccessful,
          required bool isFailed,
          required bool obscurePassword,
          required bool obscureConfirmPassword,
          required String errorFullName,
          required String errorEmail,
          required String errorPassword,
          required String errorMessage,
          required GlobalKey<FormState> formKey,
          UserDto? user,
          required AuthRepository authRepository,
          required AppStateNotifier appStateNotifier,
          required TextEditingController userEmailController,
          required TextEditingController passwordController,
          required TextEditingController confirmPasswordController}) =
      _$_SignupState;

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
  String get errorFullName;
  @override
  String get errorEmail;
  @override
  String get errorPassword;
  @override
  String get errorMessage;
  @override
  GlobalKey<FormState> get formKey;
  @override
  UserDto? get user;
  @override
  AuthRepository get authRepository;
  @override
  AppStateNotifier get appStateNotifier;
  @override
  TextEditingController get userEmailController;
  @override
  TextEditingController get passwordController;
  @override
  TextEditingController get confirmPasswordController;
  @override
  @JsonKey(ignore: true)
  _$SignupStateCopyWith<_SignupState> get copyWith =>
      throw _privateConstructorUsedError;
}
