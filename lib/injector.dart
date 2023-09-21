import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';

import 'config/services/api_client.dart';
import 'config/utils/custom_logger.dart';

final di = GetIt.instance;
Future<void> dependencyInjector() async {
  final api = API().getDio;
  di.registerLazySingleton<Dio>(() => api);

//Auth

  //user

  //posts

  //Logger
  di.registerLazySingleton<ILogger>(() => CustomLogger(logger: di.call()));
  di.registerLazySingleton<Logger>(() => Logger(
        level: Level.debug,
        printer: PrettyPrinter(
          methodCount: 0,
          errorMethodCount: 8,
          lineLength: 120,
          colors: true,
          printEmojis: true,
          printTime: true,
        ),
      ));
}
