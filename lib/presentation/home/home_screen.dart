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
                  'On Home :->${appStateNotifier.user == null ? '' : appStateNotifier.user!.fullName}')),
          ElevatedButton(
            onPressed: () async {
              navigator<NavigationService>()
                  .navigateTo(CoreRoute.updateProfile);
            },
            child: const Text('go to update'),
          ),
          ElevatedButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Future.delayed(const Duration(milliseconds: 200), (() {
                appStateNotifier.updateAfterAuthChange(isAuthorized: false);
                navigator<NavigationService>().navigateTo(AuthRoutes.login);
              }));
            },
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }
}
