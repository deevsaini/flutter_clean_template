import 'package:logger/logger.dart';

abstract class ILogger {
  void info(String? message, {Object? error, StackTrace? stackTrace});
  void warning(String? message, {Object? error, StackTrace? stackTrace});
  void error(String? message, {Object? error, StackTrace? stackTrace});
  void debug(String? message, {Object? error, StackTrace? stackTrace});
}

class CustomLogger implements ILogger {
  final Logger logger;

  CustomLogger({
    required this.logger,
  });

  @override
  void debug(String? message, {Object? error, StackTrace? stackTrace}) {
    logger.d(message, error, stackTrace);
  }

  @override
  void error(String? message, {Object? error, StackTrace? stackTrace}) {
    logger.e(message, error, stackTrace);
  }

  @override
  void info(String? message, {Object? error, StackTrace? stackTrace}) {
    logger.i(message, error, stackTrace);
  }

  @override
  void warning(String? message, {Object? error, StackTrace? stackTrace}) {
    logger.w(message, error, stackTrace);
  }
}
