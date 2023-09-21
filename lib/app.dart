import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'config/router/router.dart';
import 'config/theme/app_theme.dart';
import 'config/utils/custom_logger.dart';
import 'injector.dart';

class MyApp extends StatefulWidget {
  const MyApp({
    super.key,
  });

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _cleanUpTemporaryDirectory();
  }

  _cleanUpTemporaryDirectory() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    documentsDirectory.parent.list().forEach((child) async {
      if (child is Directory && child.path.endsWith('/tmp')) {
        di<ILogger>().info(
          'Deleting temp folder at ${child.path}',
        );
        try {
          await child.delete(recursive: true);
          di<ILogger>().info('Temp folder was deleted with success');
        } catch (error) {
          di<ILogger>().info(
            'Temp folder could not be deleted: $error',
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Clean Template",
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => generateRoute(settings),
      initialRoute: "/",
      theme: theme,
      darkTheme: theme,
    );
  }
}
