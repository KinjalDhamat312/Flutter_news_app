import 'package:flutter_demo/navigation/nav_route.dart';

class RouteConstant {
  static NavRoute splashScreen = NavRoute('splash', '/splash');
  static NavRoute newsHomeScreen = NavRoute('news', '/news');
  static NavRoute newsListScreen = NavRoute('newsList', '/newsList');
  static NavRoute newsDetailsScreen = NavRoute('news/id', '/news/id');
  static NavRoute errorScreen = NavRoute('error', '/error');
}

class RouteArgument {
  static String list = 'list';
  static String title = 'title';
}
