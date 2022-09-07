// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CreateProfileEventTearOff {
  const _$CreateProfileEventTearOff();

  _onDonePressed onDonePressed() {
    return const _onDonePressed();
  }

  _onEmitFromAnywhere emitFromAnywhere({required CreateProfileState state}) {
    return _onEmitFromAnywhere(
      state: state,
    );
  }
}

/// @nodoc
const $CreateProfileEvent = _$CreateProfileEventTearOff();

/// @nodoc
mixin _$CreateProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onDonePressed,
    required TResult Function(CreateProfileState state) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onDonePressed,
    TResult Function(CreateProfileState state)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onDonePressed,
    TResult Function(CreateProfileState state)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onDonePressed value) onDonePressed,
    required TResult Function(_onEmitFromAnywhere value) emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_onDonePressed value)? onDonePressed,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onDonePressed value)? onDonePressed,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProfileEventCopyWith<$Res> {
  factory $CreateProfileEventCopyWith(
          CreateProfileEvent value, $Res Function(CreateProfileEvent) then) =
      _$CreateProfileEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateProfileEventCopyWithImpl<$Res>
    implements $CreateProfileEventCopyWith<$Res> {
  _$CreateProfileEventCopyWithImpl(this._value, this._then);

  final CreateProfileEvent _value;
  // ignore: unused_field
  final $Res Function(CreateProfileEvent) _then;
}

/// @nodoc
abstract class _$onDonePressedCopyWith<$Res> {
  factory _$onDonePressedCopyWith(
          _onDonePressed value, $Res Function(_onDonePressed) then) =
      __$onDonePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$onDonePressedCopyWithImpl<$Res>
    extends _$CreateProfileEventCopyWithImpl<$Res>
    implements _$onDonePressedCopyWith<$Res> {
  __$onDonePressedCopyWithImpl(
      _onDonePressed _value, $Res Function(_onDonePressed) _then)
      : super(_value, (v) => _then(v as _onDonePressed));

  @override
  _onDonePressed get _value => super._value as _onDonePressed;
}

/// @nodoc

class _$_onDonePressed implements _onDonePressed {
  const _$_onDonePressed();

  @override
  String toString() {
    return 'CreateProfileEvent.onDonePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _onDonePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onDonePressed,
    required TResult Function(CreateProfileState state) emitFromAnywhere,
  }) {
    return onDonePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onDonePressed,
    TResult Function(CreateProfileState state)? emitFromAnywhere,
  }) {
    return onDonePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onDonePressed,
    TResult Function(CreateProfileState state)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onDonePressed != null) {
      return onDonePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onDonePressed value) onDonePressed,
    required TResult Function(_onEmitFromAnywhere value) emitFromAnywhere,
  }) {
    return onDonePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_onDonePressed value)? onDonePressed,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return onDonePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onDonePressed value)? onDonePressed,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (onDonePressed != null) {
      return onDonePressed(this);
    }
    return orElse();
  }
}

abstract class _onDonePressed implements CreateProfileEvent {
  const factory _onDonePressed() = _$_onDonePressed;
}

/// @nodoc
abstract class _$onEmitFromAnywhereCopyWith<$Res> {
  factory _$onEmitFromAnywhereCopyWith(
          _onEmitFromAnywhere value, $Res Function(_onEmitFromAnywhere) then) =
      __$onEmitFromAnywhereCopyWithImpl<$Res>;
  $Res call({CreateProfileState state});

  $CreateProfileStateCopyWith<$Res> get state;
}

/// @nodoc
class __$onEmitFromAnywhereCopyWithImpl<$Res>
    extends _$CreateProfileEventCopyWithImpl<$Res>
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
              as CreateProfileState,
    ));
  }

  @override
  $CreateProfileStateCopyWith<$Res> get state {
    return $CreateProfileStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc

class _$_onEmitFromAnywhere implements _onEmitFromAnywhere {
  const _$_onEmitFromAnywhere({required this.state});

  @override
  final CreateProfileState state;

  @override
  String toString() {
    return 'CreateProfileEvent.emitFromAnywhere(state: $state)';
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
    required TResult Function() onDonePressed,
    required TResult Function(CreateProfileState state) emitFromAnywhere,
  }) {
    return emitFromAnywhere(state);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onDonePressed,
    TResult Function(CreateProfileState state)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(state);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onDonePressed,
    TResult Function(CreateProfileState state)? emitFromAnywhere,
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
    required TResult Function(_onDonePressed value) onDonePressed,
    required TResult Function(_onEmitFromAnywhere value) emitFromAnywhere,
  }) {
    return emitFromAnywhere(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_onDonePressed value)? onDonePressed,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
  }) {
    return emitFromAnywhere?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onDonePressed value)? onDonePressed,
    TResult Function(_onEmitFromAnywhere value)? emitFromAnywhere,
    required TResult orElse(),
  }) {
    if (emitFromAnywhere != null) {
      return emitFromAnywhere(this);
    }
    return orElse();
  }
}

abstract class _onEmitFromAnywhere implements CreateProfileEvent {
  const factory _onEmitFromAnywhere({required CreateProfileState state}) =
      _$_onEmitFromAnywhere;

  CreateProfileState get state;
  @JsonKey(ignore: true)
  _$onEmitFromAnywhereCopyWith<_onEmitFromAnywhere> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CreateProfileStateTearOff {
  const _$CreateProfileStateTearOff();

  _CreateProfileState call(
      {required bool isLoading,
      required bool isSuccessful,
      required bool isFailed,
      required bool obscurePassword,
      required bool obscureConfirmPassword,
      required String errorEmail,
      required String errorPassword,
      required String errorMessage,
      required AppStateNotifier appStateNotifier,
      required AuthRepository authRepository,
      required TextEditingController userEmailController,
      required TextEditingController passwordController,
      required TextEditingController firstNameController,
      required TextEditingController lastNameController,
      required TextEditingController referenceController,
      required TextEditingController mobileNumberController,
      UserDto? user}) {
    return _CreateProfileState(
      isLoading: isLoading,
      isSuccessful: isSuccessful,
      isFailed: isFailed,
      obscurePassword: obscurePassword,
      obscureConfirmPassword: obscureConfirmPassword,
      errorEmail: errorEmail,
      errorPassword: errorPassword,
      errorMessage: errorMessage,
      appStateNotifier: appStateNotifier,
      authRepository: authRepository,
      userEmailController: userEmailController,
      passwordController: passwordController,
      firstNameController: firstNameController,
      lastNameController: lastNameController,
      referenceController: referenceController,
      mobileNumberController: mobileNumberController,
      user: user,
    );
  }
}

/// @nodoc
const $CreateProfileState = _$CreateProfileStateTearOff();

/// @nodoc
mixin _$CreateProfileState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isSuccessful => throw _privateConstructorUsedError;
  bool get isFailed => throw _privateConstructorUsedError;
  bool get obscurePassword => throw _privateConstructorUsedError;
  bool get obscureConfirmPassword => throw _privateConstructorUsedError;
  String get errorEmail => throw _privateConstructorUsedError;
  String get errorPassword => throw _privateConstructorUsedError;
  String get errorMessage =>
      throw _privateConstructorUsedError; //required GlobalKey<FormState> formKey,
  AppStateNotifier get appStateNotifier => throw _privateConstructorUsedError;
  AuthRepository get authRepository => throw _privateConstructorUsedError;
  TextEditingController get userEmailController =>
      throw _privateConstructorUsedError;
  TextEditingController get passwordController =>
      throw _privateConstructorUsedError;
  TextEditingController get firstNameController =>
      throw _privateConstructorUsedError;
  TextEditingController get lastNameController =>
      throw _privateConstructorUsedError;
  TextEditingController get referenceController =>
      throw _privateConstructorUsedError;
  TextEditingController get mobileNumberController =>
      throw _privateConstructorUsedError;
  UserDto? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateProfileStateCopyWith<CreateProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProfileStateCopyWith<$Res> {
  factory $CreateProfileStateCopyWith(
          CreateProfileState value, $Res Function(CreateProfileState) then) =
      _$CreateProfileStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      bool isSuccessful,
      bool isFailed,
      bool obscurePassword,
      bool obscureConfirmPassword,
      String errorEmail,
      String errorPassword,
      String errorMessage,
      AppStateNotifier appStateNotifier,
      AuthRepository authRepository,
      TextEditingController userEmailController,
      TextEditingController passwordController,
      TextEditingController firstNameController,
      TextEditingController lastNameController,
      TextEditingController referenceController,
      TextEditingController mobileNumberController,
      UserDto? user});

  $UserDtoCopyWith<$Res>? get user;
}

/// @nodoc
class _$CreateProfileStateCopyWithImpl<$Res>
    implements $CreateProfileStateCopyWith<$Res> {
  _$CreateProfileStateCopyWithImpl(this._value, this._then);

  final CreateProfileState _value;
  // ignore: unused_field
  final $Res Function(CreateProfileState) _then;

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
    Object? appStateNotifier = freezed,
    Object? authRepository = freezed,
    Object? userEmailController = freezed,
    Object? passwordController = freezed,
    Object? firstNameController = freezed,
    Object? lastNameController = freezed,
    Object? referenceController = freezed,
    Object? mobileNumberController = freezed,
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
      appStateNotifier: appStateNotifier == freezed
          ? _value.appStateNotifier
          : appStateNotifier // ignore: cast_nullable_to_non_nullable
              as AppStateNotifier,
      authRepository: authRepository == freezed
          ? _value.authRepository
          : authRepository // ignore: cast_nullable_to_non_nullable
              as AuthRepository,
      userEmailController: userEmailController == freezed
          ? _value.userEmailController
          : userEmailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: passwordController == freezed
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      firstNameController: firstNameController == freezed
          ? _value.firstNameController
          : firstNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      lastNameController: lastNameController == freezed
          ? _value.lastNameController
          : lastNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      referenceController: referenceController == freezed
          ? _value.referenceController
          : referenceController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      mobileNumberController: mobileNumberController == freezed
          ? _value.mobileNumberController
          : mobileNumberController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto?,
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
abstract class _$CreateProfileStateCopyWith<$Res>
    implements $CreateProfileStateCopyWith<$Res> {
  factory _$CreateProfileStateCopyWith(
          _CreateProfileState value, $Res Function(_CreateProfileState) then) =
      __$CreateProfileStateCopyWithImpl<$Res>;
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
      AppStateNotifier appStateNotifier,
      AuthRepository authRepository,
      TextEditingController userEmailController,
      TextEditingController passwordController,
      TextEditingController firstNameController,
      TextEditingController lastNameController,
      TextEditingController referenceController,
      TextEditingController mobileNumberController,
      UserDto? user});

  @override
  $UserDtoCopyWith<$Res>? get user;
}

/// @nodoc
class __$CreateProfileStateCopyWithImpl<$Res>
    extends _$CreateProfileStateCopyWithImpl<$Res>
    implements _$CreateProfileStateCopyWith<$Res> {
  __$CreateProfileStateCopyWithImpl(
      _CreateProfileState _value, $Res Function(_CreateProfileState) _then)
      : super(_value, (v) => _then(v as _CreateProfileState));

  @override
  _CreateProfileState get _value => super._value as _CreateProfileState;

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
    Object? appStateNotifier = freezed,
    Object? authRepository = freezed,
    Object? userEmailController = freezed,
    Object? passwordController = freezed,
    Object? firstNameController = freezed,
    Object? lastNameController = freezed,
    Object? referenceController = freezed,
    Object? mobileNumberController = freezed,
    Object? user = freezed,
  }) {
    return _then(_CreateProfileState(
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
      appStateNotifier: appStateNotifier == freezed
          ? _value.appStateNotifier
          : appStateNotifier // ignore: cast_nullable_to_non_nullable
              as AppStateNotifier,
      authRepository: authRepository == freezed
          ? _value.authRepository
          : authRepository // ignore: cast_nullable_to_non_nullable
              as AuthRepository,
      userEmailController: userEmailController == freezed
          ? _value.userEmailController
          : userEmailController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      passwordController: passwordController == freezed
          ? _value.passwordController
          : passwordController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      firstNameController: firstNameController == freezed
          ? _value.firstNameController
          : firstNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      lastNameController: lastNameController == freezed
          ? _value.lastNameController
          : lastNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      referenceController: referenceController == freezed
          ? _value.referenceController
          : referenceController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      mobileNumberController: mobileNumberController == freezed
          ? _value.mobileNumberController
          : mobileNumberController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto?,
    ));
  }
}

/// @nodoc

class _$_CreateProfileState implements _CreateProfileState {
  const _$_CreateProfileState(
      {required this.isLoading,
      required this.isSuccessful,
      required this.isFailed,
      required this.obscurePassword,
      required this.obscureConfirmPassword,
      required this.errorEmail,
      required this.errorPassword,
      required this.errorMessage,
      required this.appStateNotifier,
      required this.authRepository,
      required this.userEmailController,
      required this.passwordController,
      required this.firstNameController,
      required this.lastNameController,
      required this.referenceController,
      required this.mobileNumberController,
      this.user});

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
  @override //required GlobalKey<FormState> formKey,
  final AppStateNotifier appStateNotifier;
  @override
  final AuthRepository authRepository;
  @override
  final TextEditingController userEmailController;
  @override
  final TextEditingController passwordController;
  @override
  final TextEditingController firstNameController;
  @override
  final TextEditingController lastNameController;
  @override
  final TextEditingController referenceController;
  @override
  final TextEditingController mobileNumberController;
  @override
  final UserDto? user;

  @override
  String toString() {
    return 'CreateProfileState(isLoading: $isLoading, isSuccessful: $isSuccessful, isFailed: $isFailed, obscurePassword: $obscurePassword, obscureConfirmPassword: $obscureConfirmPassword, errorEmail: $errorEmail, errorPassword: $errorPassword, errorMessage: $errorMessage, appStateNotifier: $appStateNotifier, authRepository: $authRepository, userEmailController: $userEmailController, passwordController: $passwordController, firstNameController: $firstNameController, lastNameController: $lastNameController, referenceController: $referenceController, mobileNumberController: $mobileNumberController, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateProfileState &&
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
            const DeepCollectionEquality()
                .equals(other.appStateNotifier, appStateNotifier) &&
            const DeepCollectionEquality()
                .equals(other.authRepository, authRepository) &&
            const DeepCollectionEquality()
                .equals(other.userEmailController, userEmailController) &&
            const DeepCollectionEquality()
                .equals(other.passwordController, passwordController) &&
            const DeepCollectionEquality()
                .equals(other.firstNameController, firstNameController) &&
            const DeepCollectionEquality()
                .equals(other.lastNameController, lastNameController) &&
            const DeepCollectionEquality()
                .equals(other.referenceController, referenceController) &&
            const DeepCollectionEquality()
                .equals(other.mobileNumberController, mobileNumberController) &&
            const DeepCollectionEquality().equals(other.user, user));
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
      const DeepCollectionEquality().hash(appStateNotifier),
      const DeepCollectionEquality().hash(authRepository),
      const DeepCollectionEquality().hash(userEmailController),
      const DeepCollectionEquality().hash(passwordController),
      const DeepCollectionEquality().hash(firstNameController),
      const DeepCollectionEquality().hash(lastNameController),
      const DeepCollectionEquality().hash(referenceController),
      const DeepCollectionEquality().hash(mobileNumberController),
      const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$CreateProfileStateCopyWith<_CreateProfileState> get copyWith =>
      __$CreateProfileStateCopyWithImpl<_CreateProfileState>(this, _$identity);
}

abstract class _CreateProfileState implements CreateProfileState {
  const factory _CreateProfileState(
      {required bool isLoading,
      required bool isSuccessful,
      required bool isFailed,
      required bool obscurePassword,
      required bool obscureConfirmPassword,
      required String errorEmail,
      required String errorPassword,
      required String errorMessage,
      required AppStateNotifier appStateNotifier,
      required AuthRepository authRepository,
      required TextEditingController userEmailController,
      required TextEditingController passwordController,
      required TextEditingController firstNameController,
      required TextEditingController lastNameController,
      required TextEditingController referenceController,
      required TextEditingController mobileNumberController,
      UserDto? user}) = _$_CreateProfileState;

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
  @override //required GlobalKey<FormState> formKey,
  AppStateNotifier get appStateNotifier;
  @override
  AuthRepository get authRepository;
  @override
  TextEditingController get userEmailController;
  @override
  TextEditingController get passwordController;
  @override
  TextEditingController get firstNameController;
  @override
  TextEditingController get lastNameController;
  @override
  TextEditingController get referenceController;
  @override
  TextEditingController get mobileNumberController;
  @override
  UserDto? get user;
  @override
  @JsonKey(ignore: true)
  _$CreateProfileStateCopyWith<_CreateProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}
