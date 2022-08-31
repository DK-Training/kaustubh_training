import 'package:flutter/material.dart';

import '../../../infrastructure/auth/dto/user/user_dto.dart';

class AppStateNotifier extends ChangeNotifier {
  bool isAuthorized;
  bool isProfileCompleted;
  UserDto? user;
  AppStateNotifier(
      {required this.isAuthorized,
      required this.isProfileCompleted,
      this.user});

  Future<void> updateAfterAuthChange(
      {required bool isAuthorized,
      UserDto? user,
      bool isProfileCompleted = false}) async {
    this.isAuthorized = isAuthorized;
    this.isProfileCompleted = isProfileCompleted;
    this.user = user;
    notifyListeners();
  }

  Future<void> updateState() async {
    notifyListeners();
  }
}

class AppConfig extends InheritedWidget {
  final String appTitle;
  final String buildFlavor;
  @override
  // ignore: overridden_fields
  final Widget child;

  // ignore: use_key_in_widget_constructors
  const AppConfig({
    required this.appTitle,
    required this.buildFlavor,
    required this.child,
  }) : super(child: child);

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
