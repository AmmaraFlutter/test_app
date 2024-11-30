import 'package:logger/logger.dart';

class AppLogger {
  static final Logger _logger = Logger(
      printer: PrettyPrinter(
          methodCount: 2,
          errorMethodCount: 8,
          lineLength: 120,
          colors: true,
          printEmojis: true));

  static void info(String message) {
    _logger.i(message);
  }

  static void warning(String message) {
    _logger.w(message);
  }

  static void debug(String message) {
    _logger.d(message);
  }

  static void error(String message,
      [Exception? exception, StackTrace? stackTrace]) {
    _logger.e(message, error: exception, stackTrace: stackTrace);
  }

}