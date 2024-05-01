// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en_US = {
  "app_name": "My App",
  "common": {
    "yes": "Yes US",
    "no": "No",
    "ok": "OK",
    "done": "Done",
    "cancel": "Cancel",
    "save": "Save",
    "see_more": "See More"
  },
  "network": {
    "no_network": "Please check your internet connection to ensure proper functionality.",
    "request_cancel": "Request canceled",
    "connection_time_out": "Connection time out, try again late.",
    "request_time_out": "Request time out, try again late",
    "response_time_out": "Response time out, try again late",
    "unknown": "some thing went wrong, try again later"
  },
  "permission": {
    "access_required": "Please grant permission to access this feature.",
    "access_required_settings": "Please grant permission from settings for access this feature."
  },
  "news": {
    "title": "The News",
    "trending": "Trending News",
    "breaking": "Breaking News"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en_US": en_US};
}
