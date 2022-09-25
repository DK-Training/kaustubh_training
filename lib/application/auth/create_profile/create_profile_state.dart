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
    required String errorFirstName,
    required String errorLastName,
    required String errorReference,
    required String mobileNumber,
    required String errorMessage,
    required GlobalKey<FormState> formKey,
    required AppStateNotifier appStateNotifier,
    required AuthRepository authRepository,
    required TextEditingController userEmailController,
    required TextEditingController passwordController,
    required TextEditingController firstNameController,
    required TextEditingController lastNameController,
    required TextEditingController referenceController,
    required TextEditingController mobileNumberController,
    UserDto? user,
    required bool isProfilePictureUploading,
  }) = _CreateProfileState;

  factory CreateProfileState.initial({
    required AppStateNotifier appStateNotifier,
  }) =>
      CreateProfileState(
        errorPassword: '',
        errorFirstName: '',
        errorLastName: '',
        errorReference: '',
        mobileNumber: '',
        errorEmail: '',
        errorMessage: '',
        obscurePassword: true,
        obscureConfirmPassword: true,
        authRepository: IAuthRepository(),
        isProfilePictureUploading: false,
        isLoading: false,
        isSuccessful: false,
        isFailed: false,
        appStateNotifier: appStateNotifier,
        formKey: GlobalKey<FormState>(),
        user: appStateNotifier.user,
        userEmailController: TextEditingController(),
        passwordController: TextEditingController(),
        firstNameController: TextEditingController(),
        lastNameController: TextEditingController(),
        referenceController: TextEditingController(),
        mobileNumberController: TextEditingController(),
      );
}
