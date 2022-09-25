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
          SizedBox(
            width: 8.w,
          )
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 2.h,
          );
        },
        itemCount: hashCode,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 70,
            width: 100,
          );
        },
      ),
    );

    floatingActionButton:
    FloatingActionButton(
      child: Icon(
        Icons.add,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 15,
      onPressed: (() {
        navigator<NavigationService>().navigateTo(CoreRoute.addTask);
      }),
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
