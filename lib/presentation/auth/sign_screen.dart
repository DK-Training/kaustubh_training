import 'package:flutter/material.dart';

import '../../domain/core/config/injection.dart';
import '../../domain/core/services/navigation_service/navigation_service.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('Hi, Signup')),
          ElevatedButton(
            onPressed: () {
              navigator<NavigationService>().goBack();
            },
            child: const Text('Back'),
          ),
        
        ],
      ),
    );
  }
}