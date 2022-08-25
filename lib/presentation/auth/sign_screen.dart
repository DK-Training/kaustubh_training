import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../application/auth/sign_up/sign_up_bloc.dart';
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
      create: (BuildContext context) => SignUpBloc(
        SignUpState.initial(appStateNotifier: appStateNotifier),
      ),
      child: const SignupScreenConsumer(),
    );
  }
}

class SignupScreenConsumer extends StatelessWidget {
  const SignupScreenConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpBloc, SignUpState>(
      listener: (context, state) {
        if (state.isSuccessful) {
          debugPrint('sign up successful');
          Provider.of<AppStateNotifier>(context, listen: false)
              .updateAfterAuthChange(isAuthorized: true, user: state.user);
          Future.delayed(const Duration(milliseconds: 100)).then((value) =>
              navigator<NavigationService>().navigateTo(CoreRoute.home));
        } else if (state.isFailed) {
          debugPrint('sign up failed');
          if (state.errorMessage.isNotEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(state.errorMessage),
              duration: const Duration(seconds: 3),
            ));
          }
        }
      },
      builder: (context, state) {
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
                      Row(
                        children: [
                          TextButton.icon(
                            onPressed: () {
                              navigator<NavigationService>().goBack();
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            ),
                            label: const Text(''),
                          ),
                          SizedBox(width: 10.h),
                          const Center(
                              child: Text(
                            AuthConstants.register,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.w700),
                          )),
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Center(child: Image.asset('assets/images/image.png')),
                      SizedBox(height: 3.h),
                      CustomTextField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Full Name Required';
                          }

                          return null;
                        },
                        errorText: state.errorFullName.isNotEmpty
                            ? state.errorFullName
                            : null,
                        controller: state.fullNameController,
                        prefixIcon:
                            const Icon(Icons.person, color: Colors.green),
                        height: 65,
                        labelText: AuthConstants.fullName,
                        hintText: AuthConstants.hintFullName,
                      ),
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
                        prefixIcon: const Icon(Icons.mail_outline_rounded,
                            color: Colors.green),
                        height: 65,
                        labelText: AuthConstants.emailAddress,
                        hintText: AuthConstants.hintEmail,
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
                        prefixIcon:
                            const Icon(Icons.lock_outline, color: Colors.green),
                        height: 65,
                        labelText: AuthConstants.password,
                        hintText: AuthConstants.hintPassword,
                      ),
                      CustomTextField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Age Required';
                          } else if (int.tryParse(value) == null) {
                            return 'Invalid Age';
                          }

                          return null;
                        },
                        controller: state.ageController,
                        prefixIcon: const Icon(Icons.mail_outline_rounded,
                            color: Colors.green),
                        height: 65,
                        labelText: AuthConstants.age,
                        hintText: AuthConstants.hintAge,
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
                                  context.read<SignUpBloc>().add(
                                      const SignUpEvent.onRegisterPressed());
                                } else {
                                  // print('sign up failed');
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                onPrimary: Colors.white,
                                shadowColor: Colors.greenAccent,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16.0)),
                                minimumSize: const Size(400, 50),
                              ),
                              child: const Text(AuthConstants.register),
                            ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            AuthConstants.alreadyHaveAcc,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          TextButton(
                            onPressed: () {
                              navigator<NavigationService>().goBack();
                            },
                            child: const Text(
                              AuthConstants.login,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 14.4),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
