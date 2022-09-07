part of 'create_profile_bloc.dart';

@freezed
class CreateProfileState with _$CreateProfileState {
  const factory CreateProfileState({
    required bool isLoading,
    required bool isSuccessful,
    required bool isFailed,
    required bool obscurePassword,
    required bool obscureConfirmPassword,
    required String errorEmail,
    required String errorPassword,
    required String errorMessage,
    //required GlobalKey<FormState> formKey,
    required AppStateNotifier appStateNotifier,
    required AuthRepository authRepository,
    required TextEditingController userEmailController,
    required TextEditingController passwordController,
    required TextEditingController firstNameController,
    required TextEditingController lastNameController,
    required TextEditingController referenceController,
    required TextEditingController mobileNumberController,
    UserDto? user,
  }) = _CreateProfileState;

  factory CreateProfileState.initial({
    required AppStateNotifier appStateNotifier,
  }) =>
      CreateProfileState(
        errorPassword: '',
        obscurePassword: true,
        obscureConfirmPassword: true,
        authRepository: IAuthRepository(),
        errorEmail: '',
        errorMessage: '',
        //formKey: GlobalKey<FormState>(),
        isLoading: false,
        isSuccessful: false,
        isFailed: false,
        appStateNotifier: appStateNotifier,
        userEmailController: TextEditingController(),
        passwordController: TextEditingController(),
        firstNameController: TextEditingController(),
        lastNameController: TextEditingController(),
        referenceController: TextEditingController(),
        mobileNumberController: TextEditingController(),
      );
}
