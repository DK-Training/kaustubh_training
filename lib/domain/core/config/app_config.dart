import 'package:flutter/material.dart';

class AppStateNotifier extends ChangeNotifier {
  bool isAuthorized;

  AppStateNotifier({
    required this.isAuthorized,
  });

  Future<void> updateAfterAuthChange({
    required bool isAuthorized,
  }) async {
    this.isAuthorized = isAuthorized;
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
