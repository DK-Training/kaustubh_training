import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../../infrastructure/platform/platform_enum.dart';
import '../../../../../presentation/auth/create_profile.dart';
import '../../../../../presentation/auth/login_screen.dart';
import '../../../../../presentation/auth/sign_screen.dart';
import '../../../../../presentation/home/add_task/new_task_screen.dart';
import '../../../../../presentation/home/home_screen.dart';
// import '../../../../../presentation/home/update_user_info.dart';
import '../../../extensions/string_extensions.dart';
import '../../../config/determine_platform.dart'
    if (dart.library.html) '../../../config/determine_platform_web.dart';

import 'route_names.dart';

Route<dynamic> authorizedNavigation(RouteSettings settings) {
  //Navigation for un authorized or common pages(Home,login,etc)
  final routingData = settings.name!.getRoutingData;
  switch (routingData.route) {
    case CoreRoute.home:
      return _getPageRoute(
        const HomeScreen(),
        settings,
      );

    case CoreRoute.addTask:
      return _getPageRoute(
        const NewTaskScreen(),
        settings,
      );

    // case CoreRoute.updateProfile:
    //   return _getPageRoute(
    //     const UpdateUserInfo(),
    //     settings,
    //   );

    default:
      return commonNavigation(settings);
  }
}

Route<dynamic> commonNavigation(RouteSettings settings) {
  //Navigation for un authorized or common pages(Home,etc)
  final routingData = settings.name!.getRoutingData;
  switch (routingData.route) {
    case AuthRoutes.login:
      return _getPageRoute(
        const LoginScreen(),
        settings,
      );
    case AuthRoutes.signUp:
      return _getPageRoute(
        const SignupScreen(),
        settings,
      );
    case AuthRoutes.createProfile:
      return _getPageRoute(
        const CreateProfileScreen(),
        settings,
      );

    default:
      return _getPageRoute(
        Container(),
        settings,
      );
  }
}

PageRoute _getPageRoute(
  Widget child,
  RouteSettings settings, {
  bool mainRoute = false,
}) {
  final SupportedPlatform platform = getPlatform();
  if (platform == SupportedPlatform.ios && !mainRoute) {
    return CupertinoPageRoute(builder: (BuildContext context) {
      return child;
    });
  } else if (platform == SupportedPlatform.android && !mainRoute) {
    return MaterialPageRoute(builder: (BuildContext context) {
      return child;
    });
  } else {
    return _FadeRoute(child: child, routeName: settings.name!);
  }
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({required this.child, required this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}

class CupertinoRoute extends PageRouteBuilder {
  final Widget enterPage;
  CupertinoRoute({required this.enterPage})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return enterPage;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1.0, 0.0),
                end: Offset.zero,
              ).animate(
                CurvedAnimation(
                  parent: animation,
                  curve: Curves.linearToEaseOut,
                  reverseCurve: Curves.easeInToLinear,
                ),
              ),
              child: enterPage,
            );
          },
        );
}
