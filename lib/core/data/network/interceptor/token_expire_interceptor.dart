import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../utils/log_util.dart';


@injectable
class TokenExpireInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.data["code"] == 202) {
      logE("TokenExpireInterceptor");
    }
    super.onResponse(response, handler);
  }

}
