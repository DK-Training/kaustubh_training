part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required bool isLoading,
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
    // required UserDto? userProfile,
    // required AuthRepository authRepository,
    required AppStateNotifier appStateNotifier,
    required TextEditingController fullNameController,
    required TextEditingController userEmailController,
    required TextEditingController passwordController,
    required TextEditingController ageController,
  }) = _SignUpState;

  factory SignUpState.initial({
    required AppStateNotifier appStateNotifier,
  }) =>
      SignUpState(
        errorPassword: '',
        errorFullName: '',
        obscurePassword: true,
        obscureConfirmPassword: true,
        // userProfile: null,
        errorEmail: '',
        errorMessage: '',
        errorAge: '',
        formKey: GlobalKey<FormState>(),
        isLoading: false,
        isSuccessful: false,
        isFailed: false,
        appStateNotifier: appStateNotifier,
        fullNameController: TextEditingController(),
        userEmailController: TextEditingController(),
        passwordController: TextEditingController(),
        ageController: TextEditingController(),
        // authRepository: IAuthRepository(),
      );
}
