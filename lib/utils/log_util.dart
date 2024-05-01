import 'package:logger/logger.dart';

var _logger = Logger();

logD(String msg) {
  _logger.d(msg);
}

logI(String msg) {
  _logger.i(msg);
}

logW(String msg) {
  _logger.w(msg);
}

logE(String msg) {
  _logger.e(msg);
}
