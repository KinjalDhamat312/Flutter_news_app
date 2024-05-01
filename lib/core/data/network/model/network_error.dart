import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_demo/generated/locale_keys.g.dart';

import '../../../error/failures.dart';

class ApiFailure extends Failure {
  static const int codeUnknownError = 101;
  static const int codeNetworkError = 102;
  static const int codeNoNetworkError = 1;

  final int? code;

  const ApiFailure(
    this.code,
    message,
  ) : super(message);

  factory ApiFailure.noNetwork() {
    return ApiFailure(codeNoNetworkError, LocaleKeys.network_no_network.tr());
  }

  factory ApiFailure.create(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.cancel:
          {
            return ApiFailure(-1, LocaleKeys.network_request_cancel.tr());
          }
        case DioExceptionType.connectionError:
          {
            return ApiFailure(
                codeNetworkError, LocaleKeys.network_connection_time_out.tr());
          }
        case DioExceptionType.sendTimeout:
          {
            return ApiFailure(
                codeNetworkError, LocaleKeys.network_request_time_out.tr());
          }
        case DioExceptionType.receiveTimeout:
          {
            return ApiFailure(
                codeNetworkError, LocaleKeys.network_response_time_out.tr());
          }
        case DioExceptionType.badResponse:
          {
            try {
              return ApiFailure(
                  error.response?.statusCode,
                  error.response?.data['message'] ??
                      error.response?.statusMessage);
            } on Exception catch (_) {
              return ApiFailure(
                  codeUnknownError, LocaleKeys.network_unknown.tr());
            }
          }
        default:
          {
            return ApiFailure(
                codeUnknownError, LocaleKeys.network_unknown.tr());
          }
      }
    } else {
      return ApiFailure(codeUnknownError, LocaleKeys.network_unknown.tr());
    }
  }
}
