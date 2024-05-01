import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/features/app/bloc/app_bloc.dart';
import 'package:flutter_demo/utils/log_util.dart';

import 'core/bloc/app_bloc_observer.dart';
import 'features/app/presentation/app.dart';
import 'generated/codegen_loader.g.dart';
import 'injection/injection.dart';

void main() async {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      await configureDependencies();
      await EasyLocalization.ensureInitialized();
      Bloc.observer = AppBlocObserver();

      runApp(MultiBlocProvider(
        providers: [BlocProvider<AppBloc>(create: (context) => AppBloc())],
        child: EasyLocalization(
          supportedLocales: const [Locale('en', "US")],
          fallbackLocale: Locale('en', "US"),
          path: 'assets/translations',
          assetLoader: const CodegenLoader(),
          child: const App(),
        ),
      ));
    },
    (error, stackTrace) => logE(error.toString()),
  );

  FlutterError.onError = (details) {
    logE(
      details.exceptionAsString(),
    );
  };
}
