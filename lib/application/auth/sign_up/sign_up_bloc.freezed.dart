// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SignUpEventTearOff {
  const _$SignUpEventTearOff();

  _OnRegisterPressed onRegisterPressed() {
    return const _OnRegisterPressed();
  }

  _EmitFromAnyWhere emitFromAnyWhere({required SignUpState state}) {
    return _EmitFromAnyWhere(
      state: state,
    );
  }
}

/// @nodoc
const $SignUpEvent = _$SignUpEventTearOff();

/// @nodoc
mixin _$SignUpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRegisterPressed,
    required TResult Function(SignUpState state) emitFromAnyWhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onRegisterPressed,
    TResult Function(SignUpState state)? emitFromAnyWhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRegisterPressed,
    TResult Function(SignUpState state)? emitFromAnyWhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRegisterPressed value) onRegisterPressed,
    required TResult Function(_EmitFromAnyWhere value) emitFromAnyWhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnRegisterPressed value)? onRegisterPressed,
    TResult Function(_EmitFromAnyWhere value)? emitFromAnyWhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRegisterPressed value)? onRegisterPressed,
    TResult Function(_EmitFromAnyWhere value)? emitFromAnyWhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpEventCopyWith<$Res> {
  factory $SignUpEventCopyWith(
          SignUpEvent value, $Res Function(SignUpEvent) then) =
      _$SignUpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignUpEventCopyWithImpl<$Res> implements $SignUpEventCopyWith<$Res> {
  _$SignUpEventCopyWithImpl(this._value, this._then);

  final SignUpEvent _value;
  // ignore: unused_field
  final $Res Function(SignUpEvent) _then;
}

/// @nodoc
abstract class _$OnRegisterPressedCopyWith<$Res> {
  factory _$OnRegisterPressedCopyWith(
          _OnRegisterPressed value, $Res Function(_OnRegisterPressed) then) =
      __$OnRegisterPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$OnRegisterPressedCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
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
    return 'SignUpEvent.onRegisterPressed()';
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
    required TResult Function(SignUpState state) emitFromAnyWhere,
  }) {
    return onRegisterPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onRegisterPressed,
    TResult Function(SignUpState state)? emitFromAnyWhere,
  }) {
    return onRegisterPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRegisterPressed,
    TResult Function(SignUpState state)? emitFromAnyWhere,
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
    required TResult Function(_EmitFromAnyWhere value) emitFromAnyWhere,
  }) {
    return onRegisterPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnRegisterPressed value)? onRegisterPressed,
    TResult Function(_EmitFromAnyWhere value)? emitFromAnyWhere,
  }) {
    return onRegisterPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRegisterPressed value)? onRegisterPressed,
    TResult Function(_EmitFromAnyWhere value)? emitFromAnyWhere,
    required TResult orElse(),
  }) {
    if (onRegisterPressed != null) {
      return onRegisterPressed(this);
    }
    return orElse();
  }
}

abstract class _OnRegisterPressed implements SignUpEvent {
  const factory _OnRegisterPressed() = _$_OnRegisterPressed;
}

/// @nodoc
abstract class _$EmitFromAnyWhereCopyWith<$Res> {
  factory _$EmitFromAnyWhereCopyWith(
          _EmitFromAnyWhere value, $Res Function(_EmitFromAnyWhere) then) =
      __$EmitFromAnyWhereCopyWithImpl<$Res>;
  $Res call({SignUpState state});

  $SignUpStateCopyWith<$Res> get state;
}

/// @nodoc
class __$EmitFromAnyWhereCopyWithImpl<$Res>
    extends _$SignUpEventCopyWithImpl<$Res>
    implements _$EmitFromAnyWhereCopyWith<$Res> {
  __$EmitFromAnyWhereCopyWithImpl(
      _EmitFromAnyWhere _value, $Res Function(_EmitFromAnyWhere) _then)
      : super(_value, (v) => _then(v as _EmitFromAnyWhere));

  @override
  _EmitFromAnyWhere get _value => super._value as _EmitFromAnyWhere;

  @override
  $Res call({
    Object? state = freezed,
  }) {
    return _then(_EmitFromAnyWhere(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as SignUpState,
    ));
  }

  @override
  $SignUpStateCopyWith<$Res> get state {
    return $SignUpStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_EmitFromAnyWhere implements _EmitFromAnyWhere {
  const _$_EmitFromAnyWhere({required this.state});

  @override
  final SignUpState state;

  @override
  String toString() {
    return 'SignUpEvent.emitFromAnyWhere(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmitFromAnyWhere &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(state));

  @JsonKey(ignore: true)
  @override
  _$EmitFromAnyWhereCopyWith<_EmitFromAnyWhere> get copyWith =>
      __$EmitFromAnyWhereCopyWithImpl<_EmitFromAnyWhere>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRegisterPressed,
    required TResult Function(SignUpState state) emitFromAnyWhere,
  }) {
    return emitFromAnyWhere(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onRegisterPressed,
    TResult Function(SignUpState state)? emitFromAnyWhere,
  }) {
    return emitFromAnyWhere?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRegisterPressed,
    TResult Function(SignUpState state)? emitFromAnyWhere,
    required TResult orElse(),
  }) {
    if (emitFromAnyWhere != null) {
      return emitFromAnyWhere(state);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OnRegisterPressed value) onRegisterPressed,
    required TResult Function(_EmitFromAnyWhere value) emitFromAnyWhere,
  }) {
    return emitFromAnyWhere(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_OnRegisterPressed value)? onRegisterPressed,
    TResult Function(_EmitFromAnyWhere value)? emitFromAnyWhere,
  }) {
    return emitFromAnyWhere?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OnRegisterPressed value)? onRegisterPressed,
    TResult Function(_EmitFromAnyWhere value)? emitFromAnyWhere,
    required TResult orElse(),
  }) {
    if (emitFromAnyWhere != null) {
      return emitFromAnyWhere(this);
    }
    return orElse();
  }
}

abstract class _EmitFromAnyWhere implements SignUpEvent {
  const factory _EmitFromAnyWhere({required SignUpState state}) =
      _$_EmitFromAnyWhere;

  SignUpState get state;
  @JsonKey(ignore: true)
  _$EmitFromAnyWhereCopyWith<_EmitFromAnyWhere> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SignUpStateTearOff {
  const _$SignUpStateTearOff();

  _SignUpState call(
      {required bool isLoading,
      required bool isSuccessful,
      required bool isFailed,
      required bool obscurePassword,
      required bool obscureConfirmPassword,
      required String errorFullName,
      required String errorEmail,
      required String errorPassword,
      required String errorMessage,
      required String errorAge,
      required GlobalKey<FormState> formKey,
      UserDto? user,
      required AuthRepository authRepository,
      required AppStateNotifier appStateNotifier,
      required TextEditingController fullNameController,
      required TextEditingController userEmailController,
      required TextEditingController passwordController,
      required TextEditingController ageController}) {
    return _SignUpState(
      isLoading: isLoading,
      isSuccessful: isSuccessful,
      isFailed: isFailed,
      obscurePassword: obscurePassword,
      obscureConfirmPassword: obscureConfirmPassword,
      errorFullName: errorFullName,
      errorEmail: errorEmail,
      errorPassword: errorPassword,
      errorMessage: errorMessage,
      errorAge: errorAge,
      formKey: formKey,
      user: user,
      authRepository: authRepository,
      appStateNotifier: appStateNotifier,
      fullNameController: fullNameController,
      userEmailController: userEmailController,
      passwordController: passwordController,
      ageController: ageController,
    );
  }
}

/// @nodoc
const $SignUpState = _$SignUpStateTearOff();

/// @nodoc
mixin _$SignUpState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  bool get obscurePassword => throw _privateConstructorUsedError;
  bool get obscureConfirmPassword => throw _privateConstructorUsedError;
  String get errorFullName => throw _privateConstructorUsedError;
  String get errorEmail => throw _privateConstructorUsedError;
  String get errorPassword => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get errorAge => throw _privateConstructorUsedError;
  GlobalKey<FormState> get formKey => throw _privateConstructorUsedError;
  UserDto? get user => throw _privateConstructorUsedError;
  AuthRepository get authRepository => throw _privateConstructorUsedError;
  AppStateNotifier get appStateNotifier => throw _privateConstructorUsedError;
  TextEditingController get fullNameController =>
      throw _privateConstructorUsedError;
  TextEditingController get userEmailController =>
      throw _privateConstructorUsedError;
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;
  TextEditingController get ageController => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignUpStateCopyWith<SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpStateCopyWith<$Res> {
  factory $SignUpStateCopyWith(
          SignUpState value, $Res Function(SignUpState) then) =
      _$SignUpStateCopyWithImpl<$Res>;
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
      String errorAge,
      GlobalKey<FormState> formKey,
      UserDto? user,
      AuthRepository authRepository,
      AppStateNotifier appStateNotifier,
      TextEditingController fullNameController,
      TextEditingController userEmailController,
      TextEditingController passwordController,
      TextEditingController ageController});

  $UserDtoCopyWith<$Res>? get user;
}

/// @nodoc
class _$SignUpStateCopyWithImpl<$Res> implements $SignUpStateCopyWith<$Res> {
  _$SignUpStateCopyWithImpl(this._value, this._then);

  final SignUpState _value;
  // ignore: unused_field
  final $Res Function(SignUpState) _then;

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
    Object? errorAge = freezed,
    Object? formKey = freezed,
    Object? user = freezed,
    Object? authRepository = freezed,
    Object? appStateNotifier = freezed,
    Object? fullNameController = freezed,
    Object? userEmailController = freezed,
    Object? passwordController = freezed,
    Object? ageController = freezed,
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
      errorAge: errorAge == freezed
          ? _value.errorAge
          : errorAge // ignore: cast_nullable_to_non_nullable
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
      fullNameController: fullNameController == freezed
          ? _value.fullNameController
          : fullNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      userEmailController: userEmailController == freezed
          ? _value.userEmailController
          : userEmailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: passwordController == freezed
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      ageController: ageController == freezed
          ? _value.ageController
          : ageController // ignore: cast_nullable_to_non_nullable
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
abstract class _$SignUpStateCopyWith<$Res>
    implements $SignUpStateCopyWith<$Res> {
  factory _$SignUpStateCopyWith(
          _SignUpState value, $Res Function(_SignUpState) then) =
      __$SignUpStateCopyWithImpl<$Res>;
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
      String errorAge,
      GlobalKey<FormState> formKey,
      UserDto? user,
      AuthRepository authRepository,
      AppStateNotifier appStateNotifier,
      TextEditingController fullNameController,
      TextEditingController userEmailController,
      TextEditingController passwordController,
      TextEditingController ageController});

  @override
  $UserDtoCopyWith<$Res>? get user;
}

/// @nodoc
class __$SignUpStateCopyWithImpl<$Res> extends _$SignUpStateCopyWithImpl<$Res>
    implements _$SignUpStateCopyWith<$Res> {
  __$SignUpStateCopyWithImpl(
      _SignUpState _value, $Res Function(_SignUpState) _then)
      : super(_value, (v) => _then(v as _SignUpState));

  @override
  _SignUpState get _value => super._value as _SignUpState;

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
    Object? errorAge = freezed,
    Object? formKey = freezed,
    Object? user = freezed,
    Object? authRepository = freezed,
    Object? appStateNotifier = freezed,
    Object? fullNameController = freezed,
    Object? userEmailController = freezed,
    Object? passwordController = freezed,
    Object? ageController = freezed,
  }) {
    return _then(_SignUpState(
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
      errorAge: errorAge == freezed
          ? _value.errorAge
          : errorAge // ignore: cast_nullable_to_non_nullable
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
      fullNameController: fullNameController == freezed
          ? _value.fullNameController
          : fullNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      userEmailController: userEmailController == freezed
          ? _value.userEmailController
          : userEmailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: passwordController == freezed
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      ageController: ageController == freezed
          ? _value.ageController
          : ageController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$_SignUpState implements _SignUpState {
  const _$_SignUpState(
      {required this.isLoading,
      required this.isSuccessful,
      required this.isFailed,
      required this.obscurePassword,
      required this.obscureConfirmPassword,
      required this.errorFullName,
      required this.errorEmail,
      required this.errorPassword,
      required this.errorMessage,
      required this.errorAge,
      required this.formKey,
      this.user,
      required this.authRepository,
      required this.appStateNotifier,
      required this.fullNameController,
      required this.userEmailController,
      required this.passwordController,
      required this.ageController});

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
  final String errorAge;
  @override
  final GlobalKey<FormState> formKey;
  @override
  final UserDto? user;
  @override
  final AuthRepository authRepository;
  @override
  final AppStateNotifier appStateNotifier;
  @override
  final TextEditingController fullNameController;
  @override
  final TextEditingController userEmailController;
  @override
  final TextEditingController passwordController;
  @override
  final TextEditingController ageController;

  @override
  String toString() {
    return 'SignUpState(isLoading: $isLoading, isSuccessful: $isSuccessful, isFailed: $isFailed, obscurePassword: $obscurePassword, obscureConfirmPassword: $obscureConfirmPassword, errorFullName: $errorFullName, errorEmail: $errorEmail, errorPassword: $errorPassword, errorMessage: $errorMessage, errorAge: $errorAge, formKey: $formKey, user: $user, authRepository: $authRepository, appStateNotifier: $appStateNotifier, fullNameController: $fullNameController, userEmailController: $userEmailController, passwordController: $passwordController, ageController: $ageController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpState &&
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
            const DeepCollectionEquality().equals(other.errorAge, errorAge) &&
            const DeepCollectionEquality().equals(other.formKey, formKey) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.authRepository, authRepository) &&
            const DeepCollectionEquality()
                .equals(other.appStateNotifier, appStateNotifier) &&
            const DeepCollectionEquality()
                .equals(other.fullNameController, fullNameController) &&
            const DeepCollectionEquality()
                .equals(other.userEmailController, userEmailController) &&
            const DeepCollectionEquality()
                .equals(other.passwordController, passwordController) &&
            const DeepCollectionEquality()
                .equals(other.ageController, ageController));
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
      const DeepCollectionEquality().hash(errorAge),
      const DeepCollectionEquality().hash(formKey),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(authRepository),
      const DeepCollectionEquality().hash(appStateNotifier),
      const DeepCollectionEquality().hash(fullNameController),
      const DeepCollectionEquality().hash(userEmailController),
      const DeepCollectionEquality().hash(passwordController),
      const DeepCollectionEquality().hash(ageController));

  @JsonKey(ignore: true)
  @override
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      __$SignUpStateCopyWithImpl<_SignUpState>(this, _$identity);
}

abstract class _SignUpState implements SignUpState {
  const factory _SignUpState(
      {required bool isLoading,
      required bool isSuccessful,
      required bool isFailed,
      required bool obscurePassword,
      required bool obscureConfirmPassword,
      required String errorFullName,
      required String errorEmail,
      required String errorPassword,
      required String errorMessage,
      required String errorAge,
      required GlobalKey<FormState> formKey,
      UserDto? user,
      required AuthRepository authRepository,
      required AppStateNotifier appStateNotifier,
      required TextEditingController fullNameController,
      required TextEditingController userEmailController,
      required TextEditingController passwordController,
      required TextEditingController ageController}) = _$_SignUpState;

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
  String get errorAge;
  @override
  GlobalKey<FormState> get formKey;
  @override
  UserDto? get user;
  @override
  AuthRepository get authRepository;
  @override
  AppStateNotifier get appStateNotifier;
  @override
  TextEditingController get fullNameController;
  @override
  TextEditingController get userEmailController;
  @override
  TextEditingController get passwordController;
  @override
  TextEditingController get ageController;
  @override
  @JsonKey(ignore: true)
  _$SignUpStateCopyWith<_SignUpState> get copyWith =>
      throw _privateConstructorUsedError;
}
