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
import '../core/widgets/hotel_info_card.dart';

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
          padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 3.h),
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
                height: 6.h,
              ),
              HotelInfoCard(
                hotelName: 'Kaustubh',
                hotelAddress:
                    'Av. Cuesta de las Calesas, 21, 11006 Cádiz, España ',
                houseName: 'Sagardeep',
                totalBuildings: '2',
                totalPeople: '100',
              ),
              SizedBox(
                height: 6.h,
              ),
              HotelInfoCard(
                hotelName: 'Kaustubh 3',
                hotelAddress: 'Vikhroli',
                houseName: 'Sagardeep',
                totalBuildings: '2',
                totalPeople: '100',
              ),
              SizedBox(
                height: 6.h,
              ),
              HotelInfoCard(
                hotelName: 'Kaustubh 1',
                hotelAddress: 'Vikhroli',
                houseName: 'Sagardeep',
                totalBuildings: '2',
                totalPeople: '100',
              ),
              SizedBox(
                height: 6.h,
              ),
              HotelInfoCard(
                hotelName: 'Kaustubh 2',
                hotelAddress: 'Vikhroli',
                houseName: 'Sagardeep',
                totalBuildings: '2',
                totalPeople: '100',
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
