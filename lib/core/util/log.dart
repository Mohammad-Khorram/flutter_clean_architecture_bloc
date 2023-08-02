import 'package:logger/logger.dart';

class LogCore {
  static void debug(dynamic message) {
    Logger logger = Logger();
    Logger.level = Level.verbose;
    logger.d(message);
  }

  static void warning(dynamic message) {
    Logger logger = Logger();
    Logger.level = Level.warning;
    logger.w(message);
  }

  static void error(dynamic message) {
    Logger logger = Logger();
    Logger.level = Level.error;
    logger.e(message);
  }

  static void wtf(dynamic message) {
    Logger logger = Logger();
    Logger.level = Level.wtf;
    logger.wtf(message);
  }

  static void info(dynamic message) {
    Logger logger = Logger();
    Logger.level = Level.info;
    logger.i(message);
  }
}
