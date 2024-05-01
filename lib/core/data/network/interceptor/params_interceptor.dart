import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class ParamsInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    var headers = options.headers;
    // String? token = UserManager.instance.loginEntity.value?.token;
    // headers['authorization'] = "Bearer $token";
    headers['device_type'] = Platform.isIOS ? "ios" : "android";
    headers['Content-Type'] = "application/json";

    super.onRequest(options, handler);
  }
}
