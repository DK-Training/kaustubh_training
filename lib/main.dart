import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'domain/core/config/app_config.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final app = await Firebase.initializeApp();
  print(app.options.appId);
  final appConfig = AppConfig(
    appTitle: 'Kaustubh',
    buildFlavor: 'Production',
    child: Container(),
  );
  appInitializer(appConfig);
}
