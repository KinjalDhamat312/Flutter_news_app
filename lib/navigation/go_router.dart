import 'package:flutter/material.dart';
import 'package:flutter_demo/navigation/router_constant.dart';
import 'package:go_router/go_router.dart';

import '../core/error/screen/error_screen.dart';
import '../features/news/domain/entities/news_entity.dart';
import '../features/news/presentation/view/news_list_screen.dart';
import '../features/news/presentation/view/news_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: RouteConstant.newsHomeScreen.path,
      name: RouteConstant.newsHomeScreen.name,
      builder: (context, state) => const NewsScreen(),
    ),
    GoRoute(
      path: RouteConstant.newsListScreen.path,
      name: RouteConstant.newsListScreen.name,
      builder: (context, state) {
        List<DifferentNewsEntity?> list = [];
        String title = '';
        if (state.extra is Map) {
          list = (state.extra as Map)[RouteArgument.list];
          title = (state.extra as Map)[RouteArgument.title];
        }
        return NewsListScreen(list, title);
      },
    ),
  ],
  errorBuilder: (context, state) {
    return const ErrorScreen();
  },
  initialLocation: RouteConstant.newsHomeScreen.path,
  debugLogDiagnostics: true,
);

Page<dynamic> pageWithTransition(
    BuildContext context, GoRouterState state, Widget widget,
    {Tween<Offset>? tween}) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    child: widget,
    transitionDuration: const Duration(milliseconds: 300),
    transitionsBuilder: (BuildContext context, Animation<double> animation,
        Animation<double> secondaryAnimation, Widget child) {
      return SlideTransition(
        position: (tween ??
                Tween(
                    begin: const Offset(1.0, 0.0), end: const Offset(0.0, 0.0)))
            .animate(animation),
        child: child,
      );
    },
  );
}
