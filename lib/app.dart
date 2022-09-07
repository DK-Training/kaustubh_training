import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'domain/core/config/app_config.dart';
import 'domain/core/config/injection.dart';
import 'domain/core/services/navigation_service/navigation_service.dart';
import 'domain/core/services/navigation_service/routers/route_names.dart';
import 'domain/core/services/navigation_service/routers/routing_config.dart';
import 'infrastructure/auth/dto/user/user_dto.dart';
import 'infrastructure/auth/i_auth_repository.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.of(context)!.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: const Color(0xFF0099ff),
        scaffoldBackgroundColor: const Color(0xFFF8F8F8),
        scrollbarTheme: const ScrollbarThemeData().copyWith(
          thumbColor: MaterialStateProperty.all(const Color(0xFF000000)),
        ),
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: const Color(0xFF0099ff),
              secondary: const Color(0xFF8E8E8E),
              onPrimary: const Color(0xFF979797),
              onSecondary: const Color(0xFFC4C4C4),
              primaryContainer: const Color(0xFFDFDFDF),
              secondaryContainer: const Color(0xFF0196FD),
              onSecondaryContainer: const Color(0xFF046DDE),
              // onTertiaryContainer:const Color(0xFF046DDE),
              // tertiary: const Color(0xFFFFFFFF),
              // onPrimaryContainer: const Color(0xFFFF3D00),
              // onTertiary: const Color(0XFFe7e6e6)
            ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 20.sp,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: const Color(0xFF000000),
          ),
          bodyMedium: TextStyle(
            fontSize: 16.sp,
            fontFamily: 'Poppins',
            color: const Color(0xFF000000),
            fontWeight: FontWeight.normal,
          ),
          bodySmall: TextStyle(
            fontSize: 12.sp,
            fontFamily: 'Poppins',
            color: const Color(0xFF000000),
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      builder: (context, child) => child!,
      navigatorKey: navigator<NavigationService>().navigatorKey,
      onGenerateRoute: Provider.of<AppStateNotifier>(context).isAuthorized &&
              Provider.of<AppStateNotifier>(context).isProfileCompleted
          ? authorizedNavigation
          : commonNavigation,
      initialRoute: Provider.of<AppStateNotifier>(context).isAuthorized
          ? Provider.of<AppStateNotifier>(context).isProfileCompleted
              ? AuthRoutes.createProfile
              : CoreRoute.home
          : AuthRoutes.login,
    );
  }
}

Future appInitializer(AppConfig appConfig) async {
  final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();
  // FirebaseAuth.instance.signOut();
  UserDto? user = await IAuthRepository().isUserLogged();
  bool isAuthorized = user != null;
  setupLocator(key);
  AppConfig updatedAppConfig = AppConfig(
      appTitle: appConfig.appTitle,
      buildFlavor: appConfig.buildFlavor,
      child: ChangeNotifierProvider<AppStateNotifier>(
        create: (context) {
          return AppStateNotifier(
              isAuthorized: isAuthorized,
              user: user,
              isProfileCompleted: false);
        },
        child: Sizer(builder: (context, orientation, deviceType) {
          return const MainApp();
        }),
      ));
  return runApp(updatedAppConfig);
}
