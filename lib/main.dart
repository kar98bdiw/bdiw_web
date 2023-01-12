import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';

Future<void> run() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await _init();

  runApp(const MyApp());
}

Future<void> main() async {
  await run();
}

Future<void> _init() async {}
