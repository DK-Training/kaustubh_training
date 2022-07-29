import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../../domain/core/config/app_config.dart';
import '../../domain/core/config/injection.dart';
import '../../domain/core/services/navigation_service/navigation_service.dart';
import '../../domain/core/services/navigation_service/routers/route_names.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('Hi, Login')),
          ElevatedButton(
            onPressed: () {
              Provider.of<AppStateNotifier>(context, listen: false)
                  .updateAfterAuthChange(isAuthorized: true);
              Future.delayed(const Duration(milliseconds: 100)).then((value) =>
                  navigator<NavigationService>().navigateTo(CoreRoute.home));
            },
            child: const Text('Login me in'),
          ),
          ElevatedButton(
            onPressed: () {
              navigator<NavigationService>().navigateTo(AuthRoutes.signUp);
            },
            child: const Text('Signup'),
          ),
        ],
      ),
    );
  }
}
