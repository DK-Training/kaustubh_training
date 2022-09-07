import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../domain/core/config/app_config.dart';
import '../../domain/core/config/injection.dart';
import '../../domain/core/constants/asset_constant.dart';
import '../../domain/core/constants/string_constants.dart';
import '../../domain/core/services/navigation_service/navigation_service.dart';
import '../../domain/core/services/navigation_service/routers/route_names.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // AppStateNotifier appStateNotifier = Provider.of<AppStateNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        titleSpacing: 8.w,
        title: Text(
          AuthConstants.homePageTitle,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).colorScheme.primary,
              fontSize: 14.5.sp),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 12.5.sp,
            // minRadius: 10,
            child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  AssetConstant.filterProfile,
                  width: 17.w,
                  height: 20.h,
                )),
          ),
          SizedBox(
            width: 3.w,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 12.5.sp,
            // minRadius: 10,
            child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  AssetConstant.myProfile,
                  width: 17.w,
                  height: 20.h,
                )),
          ),
          SizedBox(
            width: 8.w,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 3.h),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Container(
              // decoration: BoxDecoration(
              //     gradient: LinearGradient(
              //         begin: Alignment.bottomLeft,
              //         end: Alignment.centerRight,
              //         colors: [
              //       Theme.of(context).colorScheme.secondaryContainer,
              //       Theme.of(context).colorScheme.onSecondaryContainer
              //     ])),
              // child:
              ElevatedButton(
                onPressed: () {
                  navigator<NavigationService>().navigateTo(CoreRoute.home);
                  //   FocusScope.of(context).unfocus();

                  //   if (state.formKey.currentState!.validate()) {
                  //     // print('sign up success');
                  //     context
                  //         .read<SignupBloc>()
                  //         .add(const SignupEvent.onRegisterPressed());
                  //   } else {
                  //     // print('sign up failed');
                  //   }
                },
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.white,
                  // shadowColor: const Color.fromRGBO(4, 109, 222, 1),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0)),
                  minimumSize: const Size(400, 50),
                ),
                child: const Text(AuthConstants.homePageButtonCrear),
              ),
              // ),

              SizedBox(
                height: 7.h,
              ),
              Container(
                // constraints: BoxConstraints(minHeight: 40.h, minWidth: 400.w),
                height: 40.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Color(0xFF0A000000))],
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 100.w,
                      child: Image.asset(
                        'assets/images/cardimage-homepage.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                            tooltip: 'Casa',
                            onPressed: () {},
                            icon: SvgPicture.asset(
                              AssetConstant.houseIcon,
                              // width: 17.w,
                              // height: 20.h,
                            )),
                        Text(
                          AuthConstants.age,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 14.5.sp),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

    // body: Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Center(
    //         child: Text(
    //             'On Home :->${appStateNotifier.user == null ? '' : appStateNotifier.user!.firstName}')),
    //     ElevatedButton(
    //       onPressed: () async {
    //         // navigator<NavigationService>()
    //         //     .navigateTo(CoreRoute.updateProfile);
    //       },
    //       child: const Text('Edit'),
    //     ),
    //     ElevatedButton(
    //       onPressed: () async {
    //         await FirebaseAuth.instance.signOut();
    //         appStateNotifier.updateAfterAuthChange(isAuthorized: false);
    //         Future.delayed(const Duration(milliseconds: 200), (() {
    //           navigator<NavigationService>()
    //               .navigateTo(AuthRoutes.login, isClearStack: true);
    //         }));
    //       },
    //       child: const Text(
    //         'Logout',
    //       ),
    //     ),
    //   ],
    // ),
  }
}
