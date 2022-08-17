part of 'log_in_bloc.dart';

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
    // required UserDto? userProfile,
    // required AuthRepository authRepository,
    required AppStateNotifier appStateNotifier,
    required TextEditingController userEmailController,
    required TextEditingController passwordController,
    required AuthRepository authRepository,
  }) = _LogInState;
  factory LogInState.initial({
    required AppStateNotifier appStateNotifier,
  }) =>
      LogInState(
        errorPassword: '',
        obscurePassword: true,
        obscureConfirmPassword: true,
        authRepository:IAuthRepository(),
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
        // authRepository: IAuthRepository(),
      );
}
