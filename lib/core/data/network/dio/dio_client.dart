import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../constant/network_constant.dart';
import '../interceptor/params_interceptor.dart';
import '../interceptor/token_expire_interceptor.dart';

const int connectTimeout = 2 * 60000;
const int receiveTimeout = 2 * 60000;

@module
abstract class DioClient {
  @singleton
  Dio get dio {
    final Dio dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(milliseconds: connectTimeout),
        receiveTimeout: const Duration(milliseconds: receiveTimeout),
        headers: {},
      ),
    );

    dio.interceptors.add(ParamsInterceptor());
    dio.interceptors.add(TokenExpireInterceptor());
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

    dio.options.baseUrl = NetworkConstant.baseApiUrl;

    return dio;
  }
}
