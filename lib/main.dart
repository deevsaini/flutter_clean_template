import 'package:bettingaviator/app.dart';
import 'package:bettingaviator/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //locking device orientation
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  await dependencyInjector();
  await Hive.initFlutter();

  runApp(const MyApp());
}
