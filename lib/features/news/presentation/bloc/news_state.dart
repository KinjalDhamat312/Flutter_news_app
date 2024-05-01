part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.initial() = _Initial;

  const factory NewsState.loading() = _Loading;

  const factory NewsState.success(NewsDashboardEntity entity) = _Success;

  const factory NewsState.failed(Failure failure) = _Failure;
}
