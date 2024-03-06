import 'app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_arcore_plugin/flutter_arcore_plugin.dart'
    show ArCoreController;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print('ARCORE IS AVAILABLE?');
  print(
    await ArCoreController.checkArCoreAvailability(),
  );
  print('\nAR SERVICES INSTALLED?');
  print(
    await ArCoreController.checkIsArCoreInstalled(),
  );
  runApp(
    App(),
  );
}
