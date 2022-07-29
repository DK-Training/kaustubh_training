import '../services/navigation_service/navigation_service.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
void configureInjection() => $initGetIt(getIt);

GetIt navigator = GetIt.instance;

void setupLocator(GlobalKey<NavigatorState> navKey) {
  navigator.registerFactory(() => NavigationService(navKey));
}
