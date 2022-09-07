import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../application/auth/log_in/login_bloc.dart';
import '../../domain/core/config/app_config.dart';
import '../../domain/core/config/injection.dart';
import '../../domain/core/constants/string_constants.dart';
import '../../domain/core/services/navigation_service/navigation_service.dart';
import '../../domain/core/services/navigation_service/routers/route_names.dart';
import '../core/widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appStateNotifier = Provider.of<AppStateNotifier>(context);

    return BlocProvider(
      create: (BuildContext context) => LogInBloc(
        LogInState.initial(appStateNotifier: appStateNotifier),
      ),
      child: const LoginScreenConsumer(),
    );
  }
}

class LoginScreenConsumer extends StatelessWidget {
  const LoginScreenConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LogInBloc, LogInState>(listener: (context, state) {
      if (state.isSuccessful) {
        debugPrint('Login successful');
        Provider.of<AppStateNotifier>(context, listen: false)
            .updateAfterAuthChange(
          isAuthorized: true,
          //user: state.user,
        );
        Future.delayed(const Duration(milliseconds: 100)).then(
          (value) => navigator<NavigationService>()
              .navigateTo(AuthRoutes.createProfile, isClearStack: true),
        );
      } else if (state.isFailed) {
        debugPrint('Login failed');
        if (state.errorMessage.isNotEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.errorMessage),
            duration: const Duration(seconds: 3),
          ));
          context.read<LogInBloc>().add(LogInEvent.emitFromAnywhere(
                  state: state.copyWith(
                isFailed: false,
              )));
        }
      }
    }, builder: (context, state) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 5.w),
              child: Form(
                key: state.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5.h),
                    Center(child: Image.asset('assets/images/image.png')),
                    SizedBox(height: 6.h),
                    Center(
                      child: Text(
                        AuthConstants.login,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 14.5.sp),
                      ),
                    ),
                    SizedBox(height: 5.h),
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
                      inputWithLabel: true,
                      labelText: AuthConstants.emailAddress,
                      // hintText: AuthConstants.hintEmail,
                      // prefixIcon: const Icon(
                      //   Icons.mail_outline_rounded,
                      //   color: Colors.green,
                    ),
                    SizedBox(height: 1.h),
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
                      labelText: AuthConstants.password,
                      // hintText: AuthConstants.hintPassword,
                      obscureText: true,
                      // prefixIcon:
                      //     const Icon(Icons.lock_outline, color: Colors.green),
                    ),
                    SizedBox(height: 5.h),
                    state.isLoading
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: Colors.red,
                            ),
                          )
                        : ElevatedButton(
                            onPressed: () {
                              if (state.formKey.currentState!.validate()) {
                                context
                                    .read<LogInBloc>()
                                    .add(const LogInEvent.onLogInPressed());
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
                            child: Text(AuthConstants.login,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context)
                                            .scaffoldBackgroundColor))),
                    SizedBox(height: 2.h),
                    TextButton(
                      onPressed: () {
                        navigator<NavigationService>()
                            .navigateTo(AuthRoutes.signUp);
                      },
                      child: Center(
                        child: Text(AuthConstants.register,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary)),
                      ),
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
