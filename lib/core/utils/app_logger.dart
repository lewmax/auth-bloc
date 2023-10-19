import 'package:logger/logger.dart';

abstract class AppLogger {
  static final _logger = Logger();

  static void log(dynamic message, [StackTrace? stackTrace]) =>
      _logger.i(message, stackTrace: stackTrace);
  static void logDebug(dynamic message, [StackTrace? stackTrace]) =>
      _logger.d(message, stackTrace: stackTrace);
}
