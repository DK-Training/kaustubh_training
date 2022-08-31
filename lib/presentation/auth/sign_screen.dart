import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../application/auth/sign_up/signup_bloc.dart';
import '../../domain/core/config/app_config.dart';
import '../../domain/core/config/injection.dart';
import '../../domain/core/constants/string_constants.dart';
import '../../domain/core/services/navigation_service/navigation_service.dart';
import '../../domain/core/services/navigation_service/routers/route_names.dart';
import '../core/widgets/custom_textfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appStateNotifier = Provider.of<AppStateNotifier>(context);

    return BlocProvider(
      create: (BuildContext context) => SignupBloc(
        SignupState.initial(appStateNotifier: appStateNotifier),
      ),
      child: const SignupScreenConsumer(),
    );
  }
}

class SignupScreenConsumer extends StatelessWidget {
  const SignupScreenConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupBloc, SignupState>(listener: (context, state) {
      if (state.isSuccessful) {
        debugPrint('sign up successful');
        Provider.of<AppStateNotifier>(context, listen: false)
            .updateAfterAuthChange(
                isAuthorized: true,
                isProfileCompleted: false,
                user: state.user);
        Future.delayed(const Duration(milliseconds: 100)).then((value) =>
            navigator<NavigationService>()
                .navigateTo(AuthRoutes.createProfile, isClearStack: true));
      } else if (state.isFailed) {
        debugPrint('sign up failed');
        if (state.errorMessage.isNotEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.errorMessage),
            duration: const Duration(seconds: 3),
          ));
        }
      }
    }, builder: (context, state) {
      return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 1.h),
              child: Form(
                key: state.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 2.h),
                    TextButton.icon(
                      onPressed: () {
                        navigator<NavigationService>().goBack();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.grey,
                      ),
                      label: const Text(''),
                    ),
                    SizedBox(width: 3.h),

                    Center(child: Image.asset('assets/images/image.png')),
                    SizedBox(height: 4.h),
                    Center(
                      child: Text(
                        AuthConstants.register,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 14.5.sp),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Center(
                      child: Text(
                        AuthConstants.enterDetails,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.onSecondary,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(height: 3.5.h),

                    // CustomTextField(
                    //   validator: (value) {
                    //     if (value == null || value.isEmpty) {
                    //       return 'Full Name Required';
                    //     }

                    //     return null;
                    //   },
                    //   // errorText: state.errorFullName.isNotEmpty
                    //   //     ? state.errorFullName
                    //   //     : null,
                    //   // controller: state.fullNameController,
                    //   prefixIcon: const Icon(Icons.person, color: Colors.green),
                    //   height: 65,
                    //   labelText: AuthConstants.fullName,
                    //   hintText: AuthConstants.hintFullName,
                    // ),

                    CustomTextField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email Required';
                        } else if (!EmailValidator.validate(value)) {
                          return 'Invalid Email';
                        }

                        return null;
                      },
                      controller: state.userEmailController,
                      height: 65,
                      labelText: AuthConstants.emailAddress,
                    ),
                    CustomTextField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password Required';
                        } else if (value.length < 6) {
                          return 'Password is too short';
                        }

                        return null;
                      },
                      controller: state.passwordController,
                      obscureText: true,
                      height: 65,
                      labelText: AuthConstants.password,
                    ),
                    CustomTextField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Password Required';
                        } else if (value.length < 6) {
                          return 'Password is too short';
                        } else if (state.passwordController.text !=
                            state.confirmPasswordController.text) {
                          return 'Password did not match';
                        }

                        return null;
                      },
                      controller: state.confirmPasswordController,
                      obscureText: true,
                      height: 65,
                      labelText: AuthConstants.confirmPassword,
                    ),

                    SizedBox(height: 2.8.h),
                    state.isLoading
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: Colors.red,
                            ),
                          )
                        : ElevatedButton(
                            onPressed: () {
                              FocusScope.of(context).unfocus();

                              if (state.formKey.currentState!.validate()) {
                                // print('sign up success');
                                context
                                    .read<SignupBloc>()
                                    .add(const SignupEvent.onRegisterPressed());
                              } else {
                                // print('sign up failed');
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).colorScheme.primary,
                              onPrimary: Colors.white,
                              shadowColor: const Color.fromRGBO(4, 109, 222, 1),
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0)),
                              minimumSize: const Size(400, 50),
                            ),
                            child: const Text(AuthConstants.signup),
                          ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
