import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module
abstract class LocalStorage {
  @Order(-2)
  @preResolve
  Future<SharedPreferences> get sharePreferences =>
      SharedPreferences.getInstance();
}
