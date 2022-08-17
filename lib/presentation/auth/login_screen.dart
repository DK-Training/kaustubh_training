import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../application/auth/log_in/log_in_bloc.dart';
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
            .updateAfterAuthChange(isAuthorized: true);
        Future.delayed(const Duration(milliseconds: 100)).then((value) =>
            navigator<NavigationService>().navigateTo(CoreRoute.home));
      } else if (state.isFailed) {
        debugPrint('Login failed');
        if (state.errorMessage.isNotEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.errorMessage),
            duration: const Duration(seconds: 3),
          ));
          context.read<LogInBloc>().add(LogInEvent.emitFromAnyWhere(
                  state: state.copyWith(
                isFailed: false,
              )));
        }
      }
    }, builder: (context, state) {
      return SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 5.w),
              child: Form(
                key: state.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Center(child: Image.asset('assets/images/image.png')),
                    SizedBox(height: 6.h),
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
                      hintText: AuthConstants.hintEmail,
                      prefixIcon: const Icon(
                        Icons.mail_outline_rounded,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(height: 3.h),
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
                      hintText: AuthConstants.hintPassword,
                      obscureText: true,
                      prefixIcon:
                          const Icon(Icons.lock_outline, color: Colors.green),
                    ),
                    SizedBox(height: 6.h),
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
                              primary: Colors.green,
                              onPrimary: Colors.white,
                              shadowColor: Colors.greenAccent,
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0)),
                              minimumSize: const Size(400, 50),
                            ),
                            child: const Text(AuthConstants.login)),
                    SizedBox(height: 3.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'t have an account?',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w400),
                        ),
                        TextButton(
                          onPressed: () {
                            navigator<NavigationService>()
                                .navigateTo(AuthRoutes.signUp);
                          },
                          child: const Text(
                            'Register Here!',
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
    });
  }
}
