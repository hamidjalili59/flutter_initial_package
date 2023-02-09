import 'package:base_project/src/application.dart';
import 'package:base_project/src/injectable/injectable.dart';
import 'package:base_project/src/injectable/module_injection/main_modules_injection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'src/config/constants/general_constants.dart';

void main() async {
  await _startupSetup();
  runApp(Application());
}

//
Future _startupSetup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initializeInjection();
  if (!kIsWeb) {
    await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp],
    );
  }

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.light,
    ),
  );
}

//

Future<void> _initializeInjection() async {
  if (GeneralConstants.didStartSetup) {
    return;
  }
  GeneralConstants.didStartSetup = true;
  configureInjection();
  // final mainModule = MainModulesInjection();
  MainModulesInjection();
}
