

import 'package:flutter/material.dart';

import '../../domain/core/config/injection.dart';
import '../../domain/core/services/navigation_service/navigation_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('On Home')),
          ElevatedButton(
            onPressed: () {
              // navigator<NavigationService>().goBack();
            },
            child: const Text('Logout'),
          ),
        
        ],
      ),
    );
  }
}