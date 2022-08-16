import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'domain/core/config/app_config.dart';
import 'domain/core/config/injection.dart';
import 'domain/core/services/navigation_service/navigation_service.dart';
import 'domain/core/services/navigation_service/routers/route_names.dart';
import 'domain/core/services/navigation_service/routers/routing_config.dart';

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConfig.of(context)!.appTitle,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SourceSansPro',
        primaryColor: const Color(0xFFFFC000),
        scaffoldBackgroundColor: const Color(0xFFFFC000),
        scrollbarTheme: const ScrollbarThemeData().copyWith(
          thumbColor: MaterialStateProperty.all(const Color(0xFF000000)),
        ),
        colorScheme: ThemeData().colorScheme.copyWith(
            primary: const Color(0xFFFFC000),
            secondary: const Color(0xFF70AD46),
            onPrimary: const Color(0xFFffe699),
            onSecondary: const Color(0xFF8FDE59),
            primaryContainer: const Color(0xFF000000),
            secondaryContainer: const Color(0xFFA4CCF0),
            onTertiaryContainer: const Color(0xFF858494),
            tertiary: const Color(0xFFFFFFFF),
            onPrimaryContainer: const Color(0xFFFF3D00),
            onTertiary: const Color(0XFFe7e6e6)),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 40.0,
            fontFamily: 'DonutDerby',
            fontWeight: FontWeight.bold,
            color: Color(0xFF5B5A58),
          ),
          bodyMedium: TextStyle(
            fontSize: 16.0,
            fontFamily: 'SourceSansPro',
            color: Color(0xFF5B5A58),
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
      builder: (context, child) => child!,
      navigatorKey: navigator<NavigationService>().navigatorKey,
      onGenerateRoute: Provider.of<AppStateNotifier>(context).isAuthorized
          ? authorizedNavigation
          : commonNavigation,
      initialRoute: Provider.of<AppStateNotifier>(context).isAuthorized
          ? CoreRoute.home
          : AuthRoutes.login,
    );
  }
}

Future appInitializer(AppConfig appConfig) async {
  final GlobalKey<NavigatorState> key = GlobalKey<NavigatorState>();
  const bool isAuthorized = false;
  setupLocator(key);
  AppConfig updatedAppConfig = AppConfig(
      appTitle: appConfig.appTitle,
      buildFlavor: appConfig.buildFlavor,
      child: ChangeNotifierProvider<AppStateNotifier>(
        create: (context) {
          return AppStateNotifier(isAuthorized: isAuthorized);
        },
        child: Sizer(builder: (context, orientation, deviceType) {
          return const MainApp();
        }),
      ));
  return runApp(updatedAppConfig);
}
