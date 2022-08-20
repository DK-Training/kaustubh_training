import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../domain/core/config/app_config.dart';
import '../../domain/core/config/injection.dart';
import '../../domain/core/services/navigation_service/navigation_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppStateNotifier appStateNotifier = Provider.of<AppStateNotifier>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('On Home :->${appStateNotifier.user!.fullName}')),
          ElevatedButton(
            onPressed: () {
              navigator<NavigationService>().goBack();
            },
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }
}
