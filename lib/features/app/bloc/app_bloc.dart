import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../core/resource/app_colors.dart';

part 'app_bloc.freezed.dart';

part 'app_event.dart';

part 'app_state.dart';

@Singleton()
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc() : super(AppState.data(ThemeMode.light)) {
    on<ChangeThemeAppEvent>(changeAppTheme);
  }

  FutureOr changeAppTheme(AppEvent event, Emitter<AppState> emitter) {
    AppColors.saveThemeMode(event.themeMode);
    emitter(AppState.data(event.themeMode));
  }
}
