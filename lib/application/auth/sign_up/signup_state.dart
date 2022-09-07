part of 'signup_bloc.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    required bool isLoading,
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
    required TextEditingController confirmPasswordController,
  }) = _SignupState;

  factory SignupState.initial({
    required AppStateNotifier appStateNotifier,
  }) =>
      SignupState(
        errorPassword: '',
        errorFullName: '',
        obscurePassword: true,
        obscureConfirmPassword: true,
        // userProfile: null,
        errorEmail: '',
        errorMessage: '',
        formKey: GlobalKey<FormState>(),
        isLoading: false,
        isSuccessful: false,
        isFailed: false,
        appStateNotifier: appStateNotifier,
        userEmailController: TextEditingController(),
        passwordController: TextEditingController(),
        confirmPasswordController: TextEditingController(),
        authRepository: IAuthRepository(),
      );
}
