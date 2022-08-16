import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../domain/core/config/app_config.dart';
import '../../domain/core/config/injection.dart';
import '../../domain/core/constants/asset_constant.dart';
import '../../domain/core/services/navigation_service/navigation_service.dart';
import '../../domain/core/services/navigation_service/routers/route_names.dart';
import '../core/widgets/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 5.w),
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
              const CustomTextField(
                inputWithLabel: true,
                labelText: 'Email',
                hintText: 'Email Address',
                prefixIcon: Icon(
                  Icons.mail_outline_rounded,
                  color: Colors.green,
                ),
              ),
              SizedBox(height: 3.h),
              const CustomTextField(
                labelText: 'Password',
                hintText: 'Password',
                obscureText: true,
                prefixIcon: Icon(Icons.lock_outline, color: Colors.green),
              ),
              SizedBox(height: 6.h),
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
                child: const Text('Log in'),
              ),
              SizedBox(height: 3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Dont have an account?',
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
    );
  }
}
