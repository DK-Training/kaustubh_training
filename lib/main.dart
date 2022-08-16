import 'package:flutter/material.dart';

import 'app.dart';
import 'domain/core/config/app_config.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appConfig = AppConfig(
    appTitle: 'Kaustubh',
    buildFlavor: 'Production',
    child: Container(),
  );
  appInitializer(appConfig);
}
