import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class SharePreferencesUtil {
  bool? get appLightDarkTheme;

  void setAppLightDarkTheme(bool value);

  void removeAppLightDarkTheme();
}


@Singleton(as: SharePreferencesUtil)
class SharePreferencesUtilImp implements SharePreferencesUtil {
  SharePreferencesUtilImp(this._sharedPreferences);

  final SharedPreferences _sharedPreferences;

  @override
  bool? get appLightDarkTheme => _sharedPreferences.getBool('dark_theme');

  @override
  void setAppLightDarkTheme(bool value) {
    _sharedPreferences.setBool('dark_theme', value);
  }

  @override
  void removeAppLightDarkTheme() {
    _sharedPreferences.remove('dark_theme');
  }
}
