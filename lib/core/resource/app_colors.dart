// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:flutter_demo/injection/injection.dart';

import '../../core/data/local/share_preference_util.dart';

abstract class AppColors {
  static AppColors _of = LightModeColors();

  static AppColors get of => _of;

  static ThemeMode get themeMode {
    final darkMode = getIt<SharePreferencesUtil>().appLightDarkTheme;
    _of = darkMode == true ? DarkModeColors() : LightModeColors();
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) {
    SharePreferencesUtil pref = getIt();
    _of = mode == ThemeMode.dark ? DarkModeColors() : LightModeColors();
    mode == ThemeMode.system
        ? pref.removeAppLightDarkTheme()
        : pref.setAppLightDarkTheme(mode == ThemeMode.dark);
  }

  late Color primary;
  late Color primaryText;
  late Color gray;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color success;
  late Color warning;
  late Color error;
  late Color info;
}

class LightModeColors implements AppColors {
  Color primary = const Color(0xff242829);

  Color primaryText = const Color(0xFF14181B);
  Color gray = const Color(0xFF5D5E61);
  Color primaryBackground = const Color(0xFFFFFFFF);
  Color secondaryBackground = const Color(0xFFF4F4F4);
  Color success = const Color(0xFF249689);
  Color warning = const Color(0xFFF39C12);
  Color error = const Color(0xFFFF5963);
  Color info = const Color(0xFFFFFFFF);
}

class DarkModeColors implements AppColors {
  Color primary = const Color(0xff242829);
  Color primaryText = const Color(0xFFFFFFFF);
  Color gray = const Color(0xFF5D5E61);
  Color primaryBackground = const Color(0xFF262D34);
  Color secondaryBackground = const Color(0xFFF4F4F4);
  Color success = const Color(0xFF249689);
  Color warning = const Color(0xFFF39C12);
  Color error = const Color(0xFFFF5963);
  Color info = const Color(0xFFFFFFFF);
}
