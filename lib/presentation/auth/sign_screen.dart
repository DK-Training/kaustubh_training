import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../domain/core/config/app_config.dart';
import '../../domain/core/config/injection.dart';
import '../../domain/core/services/navigation_service/navigation_service.dart';
import '../../domain/core/services/navigation_service/routers/route_names.dart';
import '../core/widgets/custom_textfield.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 1.h),
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
                    'Register',
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
              const CustomTextField(
                prefixIcon: Icon(Icons.person, color: Colors.green),
                height: 65,
                labelText: ' Full Name',
                hintText: 'Your Full Name',
              ),
              const CustomTextField(
                prefixIcon:
                    Icon(Icons.mail_outline_rounded, color: Colors.green),
                height: 65,
                labelText: 'Email Address',
                hintText: 'Your Email Address',
              ),
              const CustomTextField(
                obscureText: true,
                prefixIcon: Icon(Icons.lock_outline, color: Colors.green),
                height: 65,
                labelText: 'Password',
                hintText: 'Your Password',
              ),
              const CustomTextField(
                prefixIcon:
                    Icon(Icons.mail_outline_rounded, color: Colors.green),
                height: 65,
                labelText: 'Age',
                hintText: 'Your Age',
              ),
              SizedBox(height: 2.8.h),
              ElevatedButton(
                onPressed: () {
                  Provider.of<AppStateNotifier>(context, listen: false)
                      .updateAfterAuthChange(isAuthorized: true);
                  Future.delayed(const Duration(milliseconds: 100)).then(
                      (value) => navigator<NavigationService>()
                          .navigateTo(CoreRoute.home));
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
                child: const Text('Register'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                    onPressed: () {
                      navigator<NavigationService>().goBack();
                    },
                    child: const Text(
                      'Log In Here!',
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
    );
  }
}
