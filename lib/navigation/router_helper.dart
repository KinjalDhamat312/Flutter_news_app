import 'package:flutter_demo/navigation/go_router.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';

@singleton
class NavigationHelper {
  Future<T?> pushReplacementScreen<T extends Object?>(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) =>
      router.pushReplacementNamed(
        name,
        pathParameters: pathParameters,
        queryParameters: queryParameters,
        extra: extra,
      );

  Future<T?> replaceScreen<T>(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) =>
      router.replaceNamed(name,
          pathParameters: pathParameters,
          queryParameters: queryParameters,
          extra: extra);

  Future<T?> pushScreen<T extends Object?>(String name,
      {Map<String, String> pathParameters = const <String, String>{},
      Map<String, dynamic> queryParameters = const <String, dynamic>{},
      Object? extra,
      GoRouter? newRouter}) {
    return (newRouter ?? router).pushNamed(
      name,
      pathParameters: pathParameters,
      queryParameters: queryParameters,
      extra: extra,
    );
  }

  void goToScreen(
    String name, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, dynamic> queryParameters = const <String, dynamic>{},
    Object? extra,
  }) =>
      router.goNamed(
        name,
        pathParameters: pathParameters,
        queryParameters: queryParameters,
        extra: extra,
      );
}
