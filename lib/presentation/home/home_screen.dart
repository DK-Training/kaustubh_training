import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../domain/core/config/app_config.dart';
import '../../domain/core/config/injection.dart';
import '../../domain/core/services/navigation_service/navigation_service.dart';
import '../../domain/core/services/navigation_service/routers/route_names.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppStateNotifier appStateNotifier = Provider.of<AppStateNotifier>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Text(
                  'On Home :->${appStateNotifier.user == null ? '' : appStateNotifier.user!.firstName}')),
          ElevatedButton(
            onPressed: () async {
              // navigator<NavigationService>()
              //     .navigateTo(CoreRoute.updateProfile);
            },
            child: const Text('Edit'),
          ),
          ElevatedButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              appStateNotifier.updateAfterAuthChange(isAuthorized: false);
              Future.delayed(const Duration(milliseconds: 200), (() {
                navigator<NavigationService>()
                    .navigateTo(AuthRoutes.login, isClearStack: true);
              }));
            },
            child: const Text(
              'Logout',
            ),
          ),
        ],
      ),
    );
  }
}
