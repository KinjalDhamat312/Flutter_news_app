import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@injectable
class NewsLocalDataSource {
  Future<Map<String, dynamic>> getLocalNews() async {
    return rootBundle
        .loadString('assets/sample/news.json')
        .then((jsonStr) => jsonDecode(jsonStr));
  }
}
