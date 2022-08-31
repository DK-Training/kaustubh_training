part of 'login_bloc.dart';

@freezed
class LogInState with _$LogInState {
  const factory LogInState({
    required bool isLoading,
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
    required AuthRepository authRepository,
    // UserDto? user,
  }) = _LogInState;

  factory LogInState.initial({
    required AppStateNotifier appStateNotifier,
  }) =>
      LogInState(
        errorPassword: '',
        obscurePassword: true,
        obscureConfirmPassword: true,
        authRepository: IAuthRepository(),
        errorEmail: '',
        errorMessage: '',
        formKey: GlobalKey<FormState>(),
        isLoading: false,
        isSuccessful: false,
        isFailed: false,
        appStateNotifier: appStateNotifier,
        userEmailController: TextEditingController(),
        passwordController: TextEditingController(),
      );
}
