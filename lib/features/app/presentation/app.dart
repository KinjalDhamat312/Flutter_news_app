import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_demo/navigation/go_router.dart';

import '../../../core/resource/app_theme.dart';
import '../../../generated/locale_keys.g.dart';
import '../bloc/app_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: LocaleKeys.app_name,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: lightTheme,
          darkTheme: dartTheme,
          themeMode: context.watch<AppBloc>().state.themeMode,
          routerConfig: router,
          // routerConfig: router,
        );
      },
    );
  }
}
