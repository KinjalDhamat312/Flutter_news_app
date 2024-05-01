part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.data(ThemeMode themeMode) = _AppStateData;
}
